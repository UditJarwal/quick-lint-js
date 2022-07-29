// Copyright (C) 2020  Matthew "strager" Glazar
// See end of file for extended copyright information.

#include <gmock/gmock.h>
#include <gtest/gtest.h>
#include <quick-lint-js/array.h>
#include <quick-lint-js/cli/cli-location.h>
#include <quick-lint-js/container/padded-string.h>
#include <quick-lint-js/diag-collector.h>
#include <quick-lint-js/diag-matcher.h>
#include <quick-lint-js/fe/diagnostic-types.h>
#include <quick-lint-js/fe/language.h>
#include <quick-lint-js/fe/parse.h>
#include <quick-lint-js/parse-support.h>
#include <quick-lint-js/port/char8.h>
#include <quick-lint-js/spy-visitor.h>
#include <string>
#include <string_view>
#include <vector>

using ::testing::ElementsAre;
using ::testing::IsEmpty;
using ::testing::UnorderedElementsAre;
using namespace std::literals::string_literals;

namespace quick_lint_js {
namespace {
class test_parse_warning : public test_parse_expression {};
// TODO(strager): Move test_error_equals_does_not_distribute_over_or tests into
// their own test file.
class test_error_equals_does_not_distribute_over_or
    : public test_parse_expression {};

TEST_F(test_parse_warning, condition_with_assignment_from_literal) {
  {
    test_parser& p = this->make_parser(u8"if (x = 42) {}"_sv);
    p.parse_and_visit_statement();
    EXPECT_THAT(p.variable_assignments, ElementsAre(u8"x"));
    EXPECT_THAT(p.errors,
                ElementsAre(DIAG_TYPE_OFFSETS(
                    p.code(), diag_assignment_makes_condition_constant,  //
                    assignment_operator, strlen(u8"if (x "), u8"=")));
  }

  {
    test_parser& p = this->make_parser(u8"if (o.prop = 'hello') {}"_sv);
    p.parse_and_visit_statement();
    EXPECT_THAT(p.errors,
                ElementsAre(DIAG_TYPE_OFFSETS(
                    p.code(), diag_assignment_makes_condition_constant,  //
                    assignment_operator, strlen(u8"if (o.prop "), u8"=")));
  }

  for (string8_view code_view : {
           u8"while (x = 'hello') {}"_sv,
           u8"for (; x = 'hello'; ) {}"_sv,
           u8"do {} while (x = 'hello');"_sv,
       }) {
    padded_string code(code_view);
    SCOPED_TRACE(code);
    spy_visitor v;
    parser p(&code, &v);
    EXPECT_TRUE(p.parse_and_visit_statement(v));
    EXPECT_THAT(
        v.errors,
        ElementsAre(DIAG_TYPE(diag_assignment_makes_condition_constant)));
  }
}

TEST_F(test_parse_warning, non_condition_with_assignment_from_literal) {
  for (string8_view code_view : {
           u8"with (x = 'hello') {}"_sv,
           u8"for (x = 'hello'; ; ) {}"_sv,
           u8"for (; ; x = 'hello') {}"_sv,
           u8"switch (x = 'hello') {}"_sv,
       }) {
    padded_string code(code_view);
    SCOPED_TRACE(code);
    spy_visitor v;
    parser p(&code, &v);
    EXPECT_TRUE(p.parse_and_visit_statement(v));
    EXPECT_THAT(v.errors, IsEmpty());
  }
}

TEST_F(test_parse_warning,
       condition_with_assignment_from_literal_with_parentheses) {
  {
    test_parser& p = this->make_parser(u8"if ((x = 42)) {}"_sv);
    p.parse_and_visit_statement();
    EXPECT_THAT(p.variable_assignments, ElementsAre(u8"x"));
    EXPECT_THAT(p.errors, IsEmpty());
  }
}

TEST_F(test_parse_warning, condition_with_updating_assignment_from_literal) {
  {
    test_parser& p = this->make_parser(u8"if (x += 42) {}"_sv);
    p.parse_and_visit_statement();
    EXPECT_THAT(p.variable_assignments, ElementsAre(u8"x"));
    EXPECT_THAT(p.errors, IsEmpty());
  }
}

TEST_F(test_parse_warning, condition_with_assignment_from_non_literal) {
  {
    test_parser& p = this->make_parser(u8"if (x = y) {}"_sv);
    p.parse_and_visit_statement();
    EXPECT_THAT(p.variable_assignments, ElementsAre(u8"x"));
    EXPECT_THAT(p.errors, IsEmpty());
  }
}

TEST_F(test_error_equals_does_not_distribute_over_or, examples) {
  {
    test_parser& p = this->make_parser(u8"if (x === 'A' || 'B') {}"_sv);
    p.parse_and_visit_statement();
    EXPECT_THAT(p.variable_uses, ElementsAre(u8"x"));
    EXPECT_THAT(p.errors,
                ElementsAre(DIAG_TYPE_2_OFFSETS(
                    p.code(), diag_equals_does_not_distribute_over_or,  //
                    or_operator, strlen(u8"if (x === 'A' "), u8"||",    //
                    equals_operator, strlen(u8"if (x "), u8"===")));
  }

  {
    test_parser& p = this->make_parser(u8"if (x === 10 || 0) {}"_sv);
    p.parse_and_visit_statement();
    EXPECT_THAT(p.errors,
                ElementsAre(DIAG_TYPE_2_OFFSETS(
                    p.code(), diag_equals_does_not_distribute_over_or,  //
                    or_operator, strlen(u8"if (x === 10 "), u8"||",     //
                    equals_operator, strlen(u8"if (x "), u8"===")));
  }

  {
    test_parser& p = this->make_parser(u8"if (x == 'A' || 'B') {}"_sv);
    p.parse_and_visit_statement();
    EXPECT_THAT(p.errors,
                ElementsAre(DIAG_TYPE_2_OFFSETS(
                    p.code(), diag_equals_does_not_distribute_over_or,  //
                    or_operator, strlen(u8"if (x == 'A' "), u8"||",     //
                    equals_operator, strlen(u8"if (x "), u8"==")));
  }
}

TEST_F(test_error_equals_does_not_distribute_over_or, not_equals) {
  {
    test_parser& p = this->make_parser(u8"if (x != 'A' || 'B') {}"_sv);
    p.parse_and_visit_module();
    EXPECT_THAT(p.errors, IsEmpty());
  }

  {
    test_parser& p = this->make_parser(u8"if (x !== 'A' || 'B') {}"_sv);
    p.parse_and_visit_module();
    EXPECT_THAT(p.errors, IsEmpty());
  }
}

TEST_F(test_error_equals_does_not_distribute_over_or, logical_and) {
  {
    test_parser& p = this->make_parser(u8"if (x == 'A' && 'B') {}"_sv);
    p.parse_and_visit_statement();
    EXPECT_THAT(p.errors, IsEmpty());
  }
}

TEST_F(test_error_equals_does_not_distribute_over_or, non_constant) {
  {
    test_parser& p = this->make_parser(u8"if (x === 'A' || y) {}"_sv);
    p.parse_and_visit_statement();
    EXPECT_THAT(p.errors, IsEmpty());
  }
}
}
}

// quick-lint-js finds bugs in JavaScript programs.
// Copyright (C) 2020  Matthew "strager" Glazar
//
// This file is part of quick-lint-js.
//
// quick-lint-js is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// quick-lint-js is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with quick-lint-js.  If not, see <https://www.gnu.org/licenses/>.

#!/usr/bin/env bats

setup() {
  load "test-helper.bash"
  source "${PROJECT_ROOT}/str"
}

@test "lb_to_lower_all() pass" {
  run lb_to_lower_all "FOO"
  assert_output "foo"
}

@test "lb_to_lower() pass" {
  run lb_to_lower "FOO"
  assert_output "fOO"
  run lb_to_lower "fOO"
  assert_output "fOO"
}

@test "lb_to_upper_all() pass" {
  run lb_to_upper_all "foo"
  assert_output "FOO"
}

@test "lb_to_upper() pass" {
  run lb_to_upper "foo"
  assert_output "Foo"
  run lb_to_upper "Foo"
  assert_output "Foo"
}

@test "lb_rm_last_char() pass" {
  run lb_rm_last_char abc
  assert_output "ab"
}

@test "lb_get_last_char() pass" {
  run lb_get_last_char abc
  assert_output "c"
}

@test "lb_length() pass" {
  run lb_length abcABC123ABCabc
  assert_output "15"
}

@test "lb_replace() pass" {
  run lb_replace "abcABC123ABCabc" "123" "456"
  assert_output "abcABC456ABCabc"
}

@test "lb_reverse_case_all() pass" {
  run lb_reverse_case_all "HeLlO"
  assert_output "hElLo"
  run lb_reverse_case_all "hello"
  assert_output "HELLO"
  run lb_reverse_case_all "HELLO"
  assert_output "hello"
}

@test "lb_reverse_case() pass" {
  run lb_reverse_case "HeLlO"
  assert_output "heLlO"
  run lb_reverse_case "hello"
  assert_output "Hello"
  run lb_reverse_case "HELLO"
  assert_output "hELLO"
}

@test "lb_split() pass default delimiter" {
  run lb_split "apples,oranges,pears,grapes"
  assert_line --index 0 apples
  assert_line --index 1 oranges
  assert_line --index 2 pears
  assert_line --index 3 grapes
}

@test "lb_split() pass with passed delimiter" {
  run lb_split "apples;oranges;pears;grapes" ";"
  assert_line --index 0 apples
  assert_line --index 1 oranges
  assert_line --index 2 pears
  assert_line --index 3 grapes
}

@test "lb_split() pass with environmental variable delimiter" {
  LIBBASH_DELIMITER=";"
  run lb_split "apples;oranges;pears;grapes"
  assert_line --index 0 apples
  assert_line --index 1 oranges
  assert_line --index 2 pears
  assert_line --index 3 grapes
}

@test "lb_trim() pass" {
  run lb_trim "    Hello,  World    "
  assert_output "Hello,  World"
}

@test "lb_trim() fail" {
  run lb_trim "    Hello,  World    "
  refute_output "Hello, World"
}

@test "lb_trim_all() pass" {
  run lb_trim_all "    Hello,  World    "
  assert_output "Hello, World"
}

@test "lb_trim_all() fail" {
  run lb_trim_all "    Hello,  World    "
  refute_output "Hello,  World"
}

@test "lb_trim_all() set -f success" {
  set -f
  run lb_trim_all "    Hello,  World    "
  run echo $-
  assert_output --partial "f"
}

@test "lb_trim_all() set +f fail" {
  set +f
  run lb_trim_all "    Hello,  World    "
  run echo $-
  refute_output --partial "f"
}

@test "lb_trim_quotes() pass" {
  run lb_trim_quotes "'Hello', \"World\""
  assert_output "Hello, World"
}

@test "lb_trim_quotes() fail" {
  run lb_trim_quotes "'Hello', \"World\""
  refute_output "'Hello', \"World\""
}

@test "lb_strip_all() pass" {
  run lb_strip_all "The Quick Brown Fox" "[aeiou]"
  assert_output "Th Qck Brwn Fx"
}

@test "lb_strip_all() fail" {
  run lb_strip_all "The Quick Brown Fox" "[aeiou]"
  refute_output "The Quick Brown Fox"
}

@test "lb_strip() pass" {
  run lb_strip "The Quick Brown Fox" "[aeiou]"
  assert_output "Th Quick Brown Fox"
}

@test "lb_strip() fail" {
  run lb_strip "The Quick Brown Fox" "[aeiou]"
  refute_output "The Quick Brown Fox"
}

@test "lb_lstrip() pass" {
  run lb_lstrip "The Quick Brown Fox" "The "
  assert_output "Quick Brown Fox"
}

@test "lb_lstrip() fail" {
  run lb_lstrip "The Quick Brown Fox" "The "
  refute_output "The Quick Brown Fox"
}

@test "lb_rstrip() pass" {
  run lb_rstrip "The Quick Brown Fox" " Fox"
  assert_output "The Quick Brown"
}

@test "lb_rstrip() fail" {
  run lb_rstrip "The Quick Brown Fox" " Fox"
  refute_output "The Quick Brown Fox"
}

@test "lb_regex() pass" {
  run lb_regex '    hello' '^\s*(.*)'
  assert_output "hello"
  run lb_regex "#FFFFFF" '^(#?([a-fA-F0-9]{6}|[a-fA-F0-9]{3}))$'
  assert_output "#FFFFFF"
  run lb_regex "red" '^(#?([a-fA-F0-9]{6}|[a-fA-F0-9]{3}))$'
  assert_output ""
}

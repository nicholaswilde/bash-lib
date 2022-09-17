#!/usr/bin/env bats

setup() {
  load "test-helper.bash"
  source "${PROJECT_ROOT}/str"
}

@test "lb_to_lower() pass" {
  run lb_to_lower FOO
  assert_output "foo"
}

@test "lb_to_upper() pass" {
  run lb_to_upper foo
  assert_output "FOO"
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

@test "lb_reverse_case() pass" {
  run lb_reverse_case "HeLlO"
  assert_output "hElLo"
  run lb_reverse_case "hello"
  assert_output "HELLO"
  run lb_reverse_case "HELLO"
  assert_output "hello"
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

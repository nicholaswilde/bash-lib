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

#!/usr/bin/env bats

setup() {
  load "test-helper.bash"
  source "${PROJECT_ROOT}/helpers"
}

@test "lb_die() output and failure" {
  run lb_die foo
  assert_output --partial "foo"
  assert_output --partial "FATA"
  assert_failure
}

@test "lb_fail() output and failure" {
  run lb_fail foo
  assert_output --partial "foo"
  assert_output --partial "ERRO"
  assert_failure
}

@test "lb_check_args_num() success" {
  run lb_check_args_num "one" 1
  run lb_check_args_num "one" "two" 2
  assert_success
}

@test "lb_check_args_num() failures" {
  run lb_check_args_num "one" "two" 1
  run lb_check_args_num "one" 2
  assert_failure
}

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

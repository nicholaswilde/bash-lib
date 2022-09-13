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

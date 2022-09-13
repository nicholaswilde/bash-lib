#!/usr/bin/env bats

setup() {
  load "test-helper.bash"
  source "${PROJECT_ROOT}/script"
}

@test "lb_show_usage() pass" {
  run lb_show_usage "script.sh"
  assert_output "Usage: script.sh ${LIBBASH_USAGE_MSG}"
}

@test "lb_show_usage() custom pass" {
  LIBBASH_USAGE_MSG="ARGS"
  run lb_show_usage "script.sh"
  assert_output "Usage: script.sh ${LIBBASH_USAGE_MSG}"
}

@test "lb_usage_error() fail" {
  run lb_usage_error "script.sh"
  assert_failure
}

@test "lb_usage_error() output" {
  run lb_usage_error "script.sh"
  assert_line --index 0 "Usage: script.sh ${LIBBASH_USAGE_MSG}"
  assert_line --index 1 "Try script.sh -h for more options."
}

@test "lb_show_version() pass" {
  run lb_show_version "script.sh" "0.1.0"
  assert_output "script.sh version 0.1.0"
  assert_success
}

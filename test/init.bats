#!/usr/bin/env bats

setup() {
  load "test-helper.bash"
  source "${PROJECT_ROOT}/init"
}

@test "lb_lsf() bar" {
  run lb_lsf
  assert_output --partial "lb_lsf"
}

@test "LIBBASH_DIR pass" {
  assert_equal "${LIBBASH_DIR}" "${PROJECT_ROOT}"
}

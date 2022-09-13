#!/usr/bin/env bats

setup() {
  load "test-helper.bash"
  source "${PROJECT_ROOT}/file"
  FILE="${PROJECT_ROOT}/Taskfile.yaml"
}

@test "lb_remove_extension() pass" {
  run lb_remove_extension "${FILE}"
  assert_output "${PROJECT_ROOT}/Taskfile"
}

@test "lb_get_extension() pass" {
  run lb_get_extension "${FILE}"
  assert_output "yaml"
}

@test "lb_get_filename() pass" {
  run lb_get_filename "${FILE}"
  assert_output "Taskfile.yaml"
}

@test "lb_get_dir_name() pass" {
  run lb_get_dir_name "${FILE}"
  assert_output "${PROJECT_ROOT}"
}

@test "lb_get_mime_type() pass" {
  run lb_get_mime_type "${FILE}"
  assert_output "text/plain"
}

# TODO: @test "lb_get_abs_path() pass"

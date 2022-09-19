#!/usr/bin/env bats

setup() {
  load "test-helper.bash"
  source "${PROJECT_ROOT}/file"
  FILE="${TEST_FILES_DIR}/file.tar.gz"
}

@test "lb_remove_extension() pass" {
  run lb_remove_extension "${FILE}"
  assert_output "${TEST_FILES_DIR}/file"
}

@test "lb_get_extension() pass" {
  run lb_get_extension "${FILE}"
  assert_output "tar.gz"
}

@test "lb_get_filename() pass" {
  run lb_get_filename "${FILE}"
  assert_output "file.tar.gz"
}

@test "lb_get_dir_path() pass" {
  run lb_get_dir_path "${FILE}"
  assert_output "${TEST_FILES_DIR}"
}

@test "lb_get_mime_type() pass" {
  run lb_get_mime_type "${FILE}"
  assert_output "inode/x-empty"
}

# TODO: @test "lb_get_abs_path() pass"

@test "lb_count() pass" {
  run lb_count ${TEST_FILES_DIR}/*
  assert_output 8
  run lb_count ${TEST_FILES_DIR}/*/
  assert_output 3
}

@test "lb_get_lines() pass" {
  run lb_get_lines "${TEST_FILES_DIR}/file1"
  assert_output 6
}

@test "lb_count_files() pass" {
  run lb_count_files "${TEST_FILES_DIR}/*"
  assert_output 5
}

@test "lb_extract() pass" {
  run lb_extract "${TEST_FILES_DIR}/file1" "marker1" "marker2"
  assert_line --index 0 "aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
  assert_line --index 1 "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur"
}

#!/usr/bin/env bash

# shellcheck source=/dev/null
source ../init
source "${LIBBASH_DIR}/file"

function do_file() {
  printf "file\n"

  file="file.tar.gz"
  printf "filename: %s\n" "${file}"

  s=$(lb_get_extension "${file}")
  printf "lb_get_extension: %s\n" "${s}"

  s=$(lb_remove_extension "${file}")
  printf "lb_remove_extension: %s\n" "${s}"
}

function do_path() {
  printf "path\n"

  path="../test/test_files/file1"
  printf "rel path: %s\n" "${path}"

  path=$(lb_get_abs_path "${path}")
  printf "lb_get_abs_path: %s\n" "${path}"

  s=$(lb_get_filename "${path}")
  printf "lb_get_filename: %s\n" "${s}"

  s=$(lb_get_dir_path "${path}")
  printf "lb_get_dir_path: %s\n" "${s}"

  s=$(lb_get_mime_type "${path}")
  printf "lb_get_mime_type: %s\n" "${s}"

  s=$(lb_get_lines "${path}")
  printf "lb_get_lines: %s\n" "${s}"

  s="$(lb_get_dir_path "${path}")/*/"
  printf "dirs path: %s\n" "${s}"

  # shellcheck disable=SC2086
  s=$(lb_count ${s})
  printf "lb_count dirs: %s\n" "${s}"

  s="$(lb_get_dir_path "${path}")/*"
  printf "files and dirs path: %s\n" "${s}"

  # shellcheck disable=SC2086
  s=$(lb_count ${s})
  printf "lb_count files and dirs: %s\n" "${s}"

  s="$(lb_get_dir_path "${path}")/*.tar.gz"
  printf "specific files path: %s\n" "${s}"

  # shellcheck disable=SC2086
  s=$(lb_count ${s})
  printf "lb_count specific files: %s\n" "${s}"

  s="$(lb_get_dir_path "${path}")/*"
  printf "files path: %s\n" "${s}"

  s=$(lb_count_files "${s}")
  printf "lb_count files: %s\n" "${s}"

  s=$(lb_extract "${path}" "marker1" "marker2")
  printf "lb_extract: %s\n" "${s}"

  printf "filepath: %s\n" "${path}"
  s=$(lb_get_parent_dir_name "${path}")
  printf "lb_get_parent_dir_name: %s\n" "${s}"
}

function main() {
  do_file
  do_path
}

main "${@}"

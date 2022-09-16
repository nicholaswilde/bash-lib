#!/usr/bin/env bash

# shellcheck source=/dev/null
source ../init
source "${LIBBASH_DIR}/file"

function file() {
  printf "file\n"

  file="file.tar.gz"
  printf "filename: %s\n" "${file}"

  s=$(lb_get_extension "${file}")
  printf "lb_get_extension: %s\n" "${s}"

  s=$(lb_remove_extension "${file}")
  printf "lb_remove_extension: %s\n" "${s}"
}

function path() {
  printf "path\n"
  
  path="./file.sh"
  printf "rel path: %s\n" "${path}"
  
  path=$(lb_get_abs_path "${path}")
  printf "lb_get_abs_path: %s\n" "${path}"

  s=$(lb_get_filename "${path}")
  printf "lb_get_filename: %s\n" "${s}"

  s=$(lb_get_dir_path "${path}")
  printf "lb_get_dir_path: %s\n" "${s}"

  s=$(lb_get_mime_type "${path}")
  printf "lb_get_mime_type: %s\n" "${s}"
}

function main() {
  file
  path
}

main "${@}"

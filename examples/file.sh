#!/bin/bash

# shellcheck source=/dev/null
source ../init
source "${LIBBASH_DIR}/file"

function file() {
  printf "file\n"

  file="file.tar.gz"
  printf "filename: %s\n" "${file}"

  s=$(lb_get_extension "${file}")
  printf "ext: %s\n" "${s}"

  s=$(lb_remove_extension "${file}")
  printf "ext removed: %s\n" "${s}"
}

function path() {
  printf "path\n"
  
  path="./file.sh"
  printf "rel path: %s\n" "${path}"
  
  path=$(lb_get_abs_path "${path}")
  printf "abs path: %s\n" "${path}"

  s=$(lb_get_filename "${path}")
  printf "filename: %s\n" "${s}"

  s=$(lb_get_dir_name "${path}")
  printf "dirname: %s\n" "${s}"

  s=$(lb_get_mime_type "${path}")
  printf "mime type: %s\n" "${s}"
}

function main() {
  printf "lib: file\n"
  file
  path
}

main "${@}"

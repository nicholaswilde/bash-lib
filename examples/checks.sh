#!/usr/bin/env bash

# shellcheck source=/dev/null
source ../init
source "${LIBBASH_DIR}/checks"

function check_command(){
  if lb_command_exists "${1}"; then
    printf "%s command exists\n" "${1}"
  else
    printf "%s command does not exist\n" "${1}"
  fi
}

function check_file(){
  if lb_file_exists "${1}"; then
    printf "%s file exists\n" "${1}"
  else
    printf "%s file does not exist\n" "${1}"
  fi
}

function check_dir(){
  if lb_dir_exists "${1}"; then
    printf "%s dir exists\n" "${1}"
  else
    printf "%s dir does not exist\n" "${1}"
  fi
}

function check_var(){
  if lb_is_null "${1}"; then
    printf "%s var is null\n" "FOO"
  else
    printf "%s var is not null\n" "LIBBASH_DIR"
  fi
}

function check_commands(){
  check_command "foo"
  check_command "ls"
}

function check_files(){
  check_file "${LIBBASH_DIR}/foo"
  check_file "${LIBBASH_DIR}/README.md"
}

function check_dirs(){
  check_dir "${LIBBASH_DIR}/foo"
  check_dir "${LIBBASH_DIR}"
}

function check_vars(){
  FOO=""
  check_var "${FOO}"
  check_var "${LIBBASH_DIR}"
}

function main() {
  printf "lib: checks\n"
  check_commands
  check_files
  check_dirs
  check_vars
}

main "${@}"

#!/usr/bin/env bash

# shellcheck source=/dev/null
source ../init
source "${LIBBASH_DIR}/checks"

function check_command(){
  if lb_command_exists "${1}"; then
    printf '"%s" command exists\n' "${1}"
  else
    printf '"%s" command does not exist\n' "${1}"
  fi
}

function check_file(){
  if lb_file_exists "${1}"; then
    printf '"%s" file exists\n' "${1}"
  else
    printf '"%s" file does not exist\n' "${1}"
  fi
}

function check_dir(){
  if lb_dir_exists "${1}"; then
    printf '"%s" dir exists\n' "${1}"
  else
    printf '"%s" dir does not exist\n' "${1}"
  fi
}

function check_var(){
  if lb_is_null "${1}"; then
    printf '"%s" var is null\n' "FOO"
  else
    printf '"%s" var is not null\n' "LIBBASH_DIR"
  fi
}

function check_int(){
  if lb_is_int "${1}"; then
    printf '"%s" is an int\n' "${1}"
  else
    printf '"%s" is not an int\n' "${1}"
  fi
}

function check_float(){
  if lb_is_float "${1}"; then
    printf '"%s" is a float\n' "${1}"
  else
    printf '"%s" is not a float\n' "${1}"
  fi
}

function check_bool(){
  if lb_is_bool "${1}"; then
    printf '"%s" is a bool\n' "${1}"
  else
    printf '"%s" is not a bool\n' "${1}"
  fi
}

function check_contain(){
  if lb_contains "${1}" "${2}"; then
    printf '"%s" contains "%s"\n' "${1}" "${2}"
  else
    printf '"%s" does not contain "%s"\n' "${1}" "${2}"
  fi
}

function check_starts_with(){
  if lb_starts_with "${1}" "${2}"; then
    printf '"%s" starts with "%s"\n' "${1}" "${2}"
  else
    printf '"%s" does not start with "%s"\n' "${1}" "${2}"
  fi
}

function check_ends_with(){
  if lb_ends_with "${1}" "${2}"; then
    printf '"%s" ends with "%s"\n' "${1}" "${2}"
  else
    printf '"%s" does not end with "%s"\n' "${1}" "${2}"
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

function check_ints(){
  check_int 1
  check_int 11
  check_int -1
  check_int -11
  check_int 1.1
  check_int 12.12
  check_int "foo"
}

function check_floats(){
  check_float 1
  check_float 12
  check_float -1
  check_float -12
  check_float 12.12
  check_float -12.12
  check_float .12
  check_float 0.12
  check_float -.12
  check_float 1.
  check_float "foo"
}

function check_bools(){
  check_bool 0
  check_bool 1
  check_bool 2
  check_bool -0
  check_bool -1
  check_bool true
  check_bool TRUE
  check_bool false
  check_bool FALSE
  check_bool "true"
  check_bool "false"
  check_bool "foo"
  check_bool ""
}

function check_str_contains(){
  string="foo bar"
  printf "str: %s\n" "${string}"
  check_contain "${string}" "foo"
  check_contain "${string}" "bar"
  check_contain "${string}" "baz"
}

function check_arr_contains(){
  arr=("foo" "bar")
  printf "arr: %s\n" "${arr[*]}"
  check_contain "${arr[*]}" "foo"
  check_contain "${arr[*]}" "bar"
  check_contain "${arr[*]}" "baz"
}

function check_str_starts_with(){
  string="foo bar"
  printf "str: %s\n" "${string}"
  check_starts_with "${string}" "foo"
  check_starts_with "${string}" "bar"
}

function check_arr_starts_with(){
  arr=("foo" "bar")
  printf "arr: %s\n" "${arr[*]}"
  check_starts_with "${arr[*]}" "foo"
  check_starts_with "${arr[*]}" "baz"
}

function check_str_starts_with(){
  string="foo bar"
  printf "str: %s\n" "${string}"
  check_starts_with "${string}" "foo"
  check_starts_with "${string}" "bar"
}

function check_arr_starts_with(){
  arr=("foo" "bar")
  printf "arr: %s\n" "${arr[*]}"
  check_starts_with "${arr[*]}" "foo"
  check_starts_with "${arr[*]}" "bar"
}

function check_str_ends_with(){
  string="foo bar"
  printf "str: %s\n" "${string}"
  check_ends_with "${string}" "foo"
  check_ends_with "${string}" "bar"
}

function check_arr_ends_with(){
  arr=("foo" "bar")
  printf "arr: %s\n" "${arr[*]}"
  check_ends_with "${arr[*]}" "foo"
  check_ends_with "${arr[*]}" "bar"
}

function main() {
  check_commands
  check_files
  check_dirs
  check_vars
  check_ints
  check_floats
  check_bools
  check_str_contains
  check_arr_contains
  check_str_starts_with
  check_arr_starts_with
  check_str_ends_with
  check_arr_ends_with
}

main "${@}"

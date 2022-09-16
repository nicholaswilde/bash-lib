#!/usr/bin/env bash

# shellcheck source=/dev/null
source ../init
# helpers does not need to be sourced because it is automatically sourced by init.

function check_args(){
  lb_check_args_num "${@}" 2
}

function main() {
  check_args "one" "two" "three"
  # lb_fail bar
  # lb_die foo
}

main "${@}"

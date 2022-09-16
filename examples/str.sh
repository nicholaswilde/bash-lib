#!/usr/bin/env bash

# shellcheck source=/dev/null
source ../init
source "${LIBBASH_DIR}/str"

function main() {
  printf "lib: str\n"
  
  string="abcABC123ABCabc"
  printf "string: %s\n" "${string}"

  s=$(lb_to_upper "${string}")
  printf "lb_to_upper: %s\n" "${s}"

  s=$(lb_to_lower "${string}")
  printf "lb_to_lower: %s\n" "${s}"

  s=$(lb_rm_last_char "${string}")
  printf "lb_rm_last_char: %s\n" "${s}"

  s=$(lb_get_last_char "${string}")
  printf "lb_get_last_char: %s\n" "${s}"

  s=$(lb_length "${string}")
  printf "lb_length: %s\n" "${s}"

  s=$(lb_replace "${string}" "123" "456")
  printf "lb_replace: %s\n" "${s}"

  s=$(lb_reverse_case "${string}")
  printf "lb_reverse_case: %s\n" "${s}"

}

main "${@}"

#!/bin/bash

# shellcheck source=/dev/null
source ../init
source "${LIBBASH_DIR}/str"

function main() {
  printf "lib: str\n"
  
  string="abcABC123ABCabc"
  printf "string: %s\n" "${string}"

  s=$(lb_to_upper "${string}")
  printf "Upper: %s\n" "${s}"

  s=$(lb_to_lower "${string}")
  printf "Lower: %s\n" "${s}"

  s=$(lb_rm_last_char "${string}")
  printf "last char removed: %s\n" "${s}"

  s=$(lb_get_last_char "${string}")
  printf "last char: %s\n" "${s}"

  s=$(lb_length "${string}")
  printf "length: %s\n" "${s}"
}

main "${@}"

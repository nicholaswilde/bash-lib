#!/usr/bin/env bash

# shellcheck source=/dev/null
source ../init
source "${LIBBASH_DIR}/str"

function main() {
  string="abcABC123ABCabc"
  printf "string: %s\n" "${string}"

  s=$(lb_to_upper_all "${string}")
  printf "lb_to_upper_all: %s\n" "${s}"

  s=$(lb_to_lower_all "${string}")
  printf "lb_to_lower_all: %s\n" "${s}"

  s=$(lb_rm_last_char "${string}")
  printf "lb_rm_last_char: %s\n" "${s}"

  s=$(lb_get_last_char "${string}")
  printf "lb_get_last_char: %s\n" "${s}"

  s=$(lb_length "${string}")
  printf "lb_length: %s\n" "${s}"

  s=$(lb_replace "${string}" "123" "456")
  printf "lb_replace: %s\n" "${s}"

  s=$(lb_reverse_case_all "${string}")
  printf "lb_reverse_case_all: %s\n" "${s}"

  printf "LIBBASH_DELIMITER: %s\n" "${LIBBASH_DELIMITER}"
  string="apples,oranges,pears,grapes"
  printf "string: %s\n" "${string}"
  s=$(lb_split "${string}")
  printf "lb_split: %s\n" "${s}"

  string="    Hello,  World    "
  printf "string: %s\n" "${string}"
  s=$(lb_trim "${string}")
  printf "lb_trim: %s\n" "${s}"

  s=$(lb_trim_all "${string}")
  printf "lb_trim_all: %s\n" "${s}"

  string="'Hello', \"World\""
  printf "string: %s\n" "${string}"
  s=$(lb_trim_quotes "${string}")
  printf "lb_trim_quotes: %s\n" "${s}"

  string="The Quick Brown Fox"
  printf "string: %s\npattern: %s\n" "${string}" "[aeiou]"
  s=$(lb_strip_all "${string}" "[aeiou]")
  printf "lb_strip_all: %s\n" "${s}"

  printf "string: %s\npattern: %s\n" "${string}" "[aeiou]"
  s=$(lb_strip "${string}" "[aeiou]")
  printf "lb_strip: %s\n" "${s}"

  printf "string: %s\npattern: %s\n" "${string}" "The "
  s=$(lb_lstrip "${string}" "The ")
  printf "lb_lstrip: %s\n" "${s}"

  printf "string: %s\npattern: %s\n" "${string}" " Fox"
  s=$(lb_rstrip "${string}" " Fox")
  printf "lb_rstrip: %s\n" "${s}"

  string="abcABC123ABCabc"
  printf "string: %s\n" "${string}"

  s=$(lb_to_upper "${string}")
  printf "lb_to_upper: %s\n" "${s}"

  string="ABCabc123abcABC"
  printf "string: %s\n" "${string}"

  s=$(lb_to_lower "${string}")
  printf "lb_to_lower: %s\n" "${s}"

  s=$(lb_reverse_case "${string}")
  printf "lb_reverse_case: %s\n" "${s}"

}

main "${@}"

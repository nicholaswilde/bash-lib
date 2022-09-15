#!/bin/bash

# shellcheck source=/dev/null
source ../init
source "${LIBBASH_DIR}/all"

function main() {
  s=$(lb_repo_root)
  printf "lb_repo_root: %s\n" "${s}"
}

main "${@}"

#!/bin/bash

# shellcheck source=/dev/null
source ../init
source "${LIBBASH_DIR}/git"

function main() {
  printf "lib: git\n"
  printf "repo_root: %s\n" "$(lb_repo_root)"
}

main "${@}"

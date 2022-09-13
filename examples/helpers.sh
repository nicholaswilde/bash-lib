#!/bin/bash

# shellcheck source=/dev/null
source ../init
source "${LIBBASH_DIR}/helpers"

function main() {
  lb_errorln bar
  lb_die foo
}

main "${@}"

#!/usr/bin/env bash

# shellcheck source=/dev/null
source ../init
source "${LIBBASH_DIR}/other"

function main() {
  printf 'lb_read_sleep\n'
  lb_read_sleep 1
  s=$(lb_gen_uuid)
  printf 'lb_uuid: %s\n' "${s}"
}

main "${@}"

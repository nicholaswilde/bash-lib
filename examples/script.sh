#!/bin/bash

# shellcheck source=/dev/null
source ../init
source "${LIBBASH_DIR}/script"

# shellcheck disable=SC2034
LIBBASH_USAGE_MSG="my custom usage message"

function main() {
  printf "LIBBASH_USAGE_MSG: %s\n" "${LIBBASH_USAGE_MSG}"
  # lb_show_usage "${0}"
  # lb_show_version "${0}" "0.1.0"
  lb_usage_error "${0}"
}

main "${@}"

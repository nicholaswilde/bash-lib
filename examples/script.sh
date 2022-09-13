#!/bin/bash

# shellcheck source=/dev/null
source ../init
source "${LIBBASH_DIR}/script"

function main() {
  # lb_show_usage "${0}"
  # lb_show_version "${0}" "0.1.0"
  lb_usage_error "${0}"
}

main "${@}"

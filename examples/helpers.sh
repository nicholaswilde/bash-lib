#!/bin/bash

# shellcheck source=/dev/null
source ../init
# helpers does not need to be sourced because it is automatically sourced by init.

function main() {
  lb_errorln bar
  lb_die foo
}

main "${@}"

#!/bin/bash

# shellcheck source=/dev/null
source ../init
source "${LIBBASH_DIR}/logging"

# Set write log level
# shellcheck disable=SC2034
LIBBASH_LOG_LEVEL=debug

function main() {
  printf "lib: logging\n"
  
  lb_debugf "debugf test\n"
  lb_infof "infof test\n"
  lb_warnf "warnf test\n"
  lb_errorf "errorf test\n"
  lb_fatalf "fatalf test\n"

  lb_debugln "debugln test"
  lb_infoln "infoln test"
  lb_warnln "warnln test"
  lb_errorln "errorln test"
  lb_fatalln "fatalln test"
}

main "${@}"

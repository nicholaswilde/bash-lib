#!/bin/bash

# shellcheck source=/dev/null
source ./logging

# BASH_LIB_LOG_LEVEL=debug

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

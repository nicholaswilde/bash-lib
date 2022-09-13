#!/bin/bash

# shellcheck source=/dev/null
source ./init
# source "${LIBBASH_DIR}/logging"
# source "${LIBBASH_DIR}/str"
# source "${LIBBASH_DIR}/file"
source "${LIBBASH_DIR}/all"


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

file="file.tar.gz"
printf "file: %s\n" "${file}"
s=$(lb_get_extension "${file}")
printf "ext: %s\n" "${s}"
s=$(lb_remove_extension "${file}")
printf "without ext: %s\n" "${s}"

path="./test.sh"
printf "rel path: %s\n" "${path}"
path=$(lb_get_abs_path "${path}")
printf "abs path: %s\n" "${path}"
s=$(lb_get_filename "${path}")
printf "filename: %s\n" "${s}"
s=$(lb_get_dir_name "${path}")
printf "dirname: %s\n" "${s}"
s=$(lb_get_mime_type "${path}")
printf "mime type: %s\n" "${s}"

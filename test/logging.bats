#!/usr/bin/env bats

setup() {
  load "test-helper.bash"
  source "${PROJECT_ROOT}/logging"
  export LIBBASH_LOG_LEVEL=debug
}

teardown() {
  # reset to default log level
  export LIBBASH_LOG_LEVEL=info
  echo teardown
}

@test "lb_warnln() uses the correct color" {
  run lb_warnln warning
  assert_success
  assert_output --partial $(tput setaf 3)
  assert_output --partial warning
  assert_output --partial WARN
}

@test "lb_warnf() uses the correct color" {
  run lb_warnf warning
  # assert_success
  assert_output --partial $(tput setaf 3)
  assert_output --partial warning
  assert_output --partial WARN
}

@test "lb_infoln() uses the correct color" {
  run lb_infoln info
  # assert_success
  assert_output --partial $(tput setaf 6)
  assert_output --partial info
  assert_output --partial INFO
}

@test "lb_infof() uses the correct color" {
  run lb_infof info
  # assert_success
  assert_output --partial $(tput setaf 6)
  assert_output --partial info
  assert_output --partial INFO
}

@test "lb_debugln() uses the correct color" {
  run lb_debugln debug
  assert_success
  assert_output --partial $(tput setaf 7)
  assert_output --partial debug
  assert_output --partial DEBU
}

@test "lb_debugf() uses the correct color" {
  run lb_debugf debug
  assert_success
  assert_output --partial $(tput setaf 7)
  assert_output --partial debug
  assert_output --partial DEBU
}

@test "lb_errorln() uses the correct color" {
  run lb_errorln error
  assert_success
  assert_output --partial $(tput setaf 1)
  assert_output --partial error
  assert_output --partial ERRO
}

@test "lb_errorf() uses the correct color" {
  run lb_errorf error
  assert_success
  assert_output --partial $(tput setaf 1)
  assert_output --partial error
  assert_output --partial ERRO
}

@test "lb_fatalln() uses the correct color" {
  run lb_fatalln fatal
  assert_success
  assert_output --partial $(tput setaf 7)
  assert_output --partial $(tput setab 1)
  assert_output --partial fatal
  assert_output --partial FATA
}

@test "lb_fatalf() uses the correct color" {
  run lb_fatalf fatal
  assert_success
  assert_output --partial $(tput setaf 7)
  assert_output --partial $(tput setab 1)
  assert_output --partial fatal
  assert_output --partial FATA
}

@test "_lb_check_log_level() passes debug" {
  run _lb_check_log_level debug
  assert_success
}

@test "_lb_check_log_level() passes info" {
  run _lb_check_log_level info
  assert_success
}

@test "_lb_check_log_level() passes warn" {
  run _lb_check_log_level warn
  assert_success
}

@test "_lb_check_log_level() passes error" {
  run _lb_check_log_level error
  assert_success
}

@test "_lb_check_log_level() passes fatal" {
  run _lb_check_log_level fatal
  assert_success
}

@test "_lb_check_log_level() fails" {
  run _lb_check_log_level foo
  assert_failure
}

@test "_lb_check_print() passes printf" {
  run _lb_check_print printf
  assert_success
}

@test "_lb_check_print() passes echo" {
  run _lb_check_print echo
  assert_success
}

@test "_lb_check_print() fails" {
  run _lb_check_print foo
  assert_failure
}

@test "_lb_check_out() passes stdout" {
  run _lb_check_out stdout
  assert_success
}

@test "_lb_check_out() passes stderr" {
  run _lb_check_out stderr
  assert_success
}

@test "_lb_check_out() fails" {
  run _lb_check_out foo
  assert_failure
}

#!/usr/bin/env bats

setup() {
  load "test-helper.bash"
  source "${PROJECT_ROOT}/conv"
}

@test "lb_hex_to_rgb() pass" {
  run lb_hex_to_rgb "#FFFFFF"
  assert_output "255 255 255"
}

@test "lb_rgb_to_hex() pass" {
  run lb_rgb_to_hex "255" "255" "255"
  assert_output "#ffffff"
}

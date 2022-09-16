#!/usr/bin/env bats

setup() {
  load "test-helper.bash"
  source "${PROJECT_ROOT}/url"
}

@test "lb_get_domain() passes" {
  run lb_get_domain "http://user:pw@example.com:80/some/path/url?data&and#hash"
  assert_output "example"
}

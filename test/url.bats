#!/usr/bin/env bats

setup() {
  load "test-helper.bash"
  source "${PROJECT_ROOT}/url"
}

@test "lb_get_domain() pass" {
  run lb_get_domain "http://user:pw@example.com:80/some/path/url?data&and#hash"
  assert_output "example"
}

@test "lb_url_encode() pass" {
  run lb_url_encode "http://user:pw@example.com:80/some/path/url?data&and#hash"
  assert_output "http%3A%2F%2Fuser%3Apw%40example.com%3A80%2Fsome%2Fpath%2Furl%3Fdata%26and%23hash"
}

@test "lb_url_decode() pass" {
  run lb_url_decode "http%3A%2F%2Fuser%3Apw%40example.com%3A80%2Fsome%2Fpath%2Furl%3Fdata%26and%23hash"
  assert_output "http://user:pw@example.com:80/some/path/url?data&and#hash"
}

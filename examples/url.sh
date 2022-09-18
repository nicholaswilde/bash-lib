#!/usr/bin/env bash

# shellcheck source=/dev/null
source ../init
source "${LIBBASH_DIR}/url"

function main() {
  url="http://user:pw@example.com:80/some/path/url?data&and#hash"
  printf "url: %s\n" "${url}"

  s=$(lb_get_domain "${url}")
  printf "lb_get_domain: %s\n" "${s}"

  s=$(lb_url_encode "${url}")
  printf "lb_url_encode: %s\n" "${s}"

  url="http%3A%2F%2Fuser%3Apw%40example.com%3A80%2Fsome%2Fpath%2Furl%3Fdata%26and%23hash"
  printf "url: %s\n" "${url}"

  s=$(lb_url_decode "${url}")
  printf "lb_url_decode: %s\n" "${s}"
}

main "${@}"

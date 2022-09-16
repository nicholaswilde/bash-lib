#!/usr/bin/env bash

# shellcheck source=/dev/null
source ../init
source "${LIBBASH_DIR}/url"

function main() {
  url="http://user:pw@example.com:80/some/path/url?data&and#hash"
  printf "url: %s\n" "${url}"
  
  s=$(lb_get_domain "${url}")
  printf "lb_get_domain: %s\n" "${s}"
}

main "${@}"

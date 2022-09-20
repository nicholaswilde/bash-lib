#!/usr/bin/env bash

# shellcheck source=/dev/null
source ../init
source "${LIBBASH_DIR}/conv"

function main() {
  hex="#FFFFFF"
  printf 'hex: %s\n' "${hex}"
  s=$(lb_hex_to_rgb "${hex}")
  printf 'lb_hex_to_rgb: %s\n' "${s}"

  rgb=(255 255 255)
  printf 'rgb: %s\n' "${rgb[@]}"
  s=$(lb_rgb_to_hex "${rgb[@]}")
  printf 'lb_rgb_to_hex: %s\n' "${s}"
}

main "${@}"

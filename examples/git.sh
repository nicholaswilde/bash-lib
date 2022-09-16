#!/usr/bin/env bash

# shellcheck source=/dev/null
source ../init
source "${LIBBASH_DIR}/git"

function check_git(){
  if lb_git_available; then
    printf "git is available\n"
  else
    printf "git is not available\n"
  fi
}

function check_in_repo(){
  if lb_in_git_repo; then
    # shellcheck disable=SC2016
    printf '$(pwd) is in a repo\n'
  else
    # shellcheck disable=SC2016
    printf '$(pwd) is not in a repo\n'
  fi
}

function main() {
  check_git
  check_in_repo
  
  s=$(lb_repo_root)
  printf "repo_root: %s\n" "${s}"
}

main "${@}"

#!/usr/bin/env bats

setup() {
  load "test-helper.bash"
  source "${PROJECT_ROOT}/git"
  local -r temp_dir="${BATS_TMPDIR}/testtemp"
  local -r repo_dir="${temp_dir/}/repo"
  rm -rf "${temp_dir}"
  mkdir -p "${repo_dir}"
  pushd ${repo_dir}

  git init
  git config user.email "me@email.com"
  git config user.name "John Doe"
  SKIP_GITLEAKS=YES git commit --allow-empty -m "initial"
  echo "some content" > a_file
  git add a_file
  # Add a submodule as that trips up some operations
  git submodule add https://github.com/bats-core/bats-core.git bats
  git submodule update --init
  SKIP_GITLEAKS=YES git commit -a -m "some operations fail on empty repos"
}

teardown(){
  local -r temp_dir="${BATS_TMPDIR}/testtemp"
  rm -rf "${temp_dir}"
}

@test "lb_git_available fails when git is not available" {
  real_path="${PATH}"
  PATH=""
  run lb_git_available
  PATH="${real_path}"
  assert_failure
  assert_output --partial "binary not found"
}

@test "lb_git_available succeeds when git is available" {
  git(){ :; }
  run lb_git_available
  assert_success
  assert_output ""
}

@test "lb_in_git_repo fails when not in a git repo" {
  rm -rf .git
  run lb_in_git_repo
  assert_failure
  assert_output --partial "not within a git repo"
}

@test "lb_in_git_repo succeeds when in a git repo" {
  run lb_in_git_repo
  assert_success
  assert_output ""
}

@test "lb_repo_root returns root of current repo" {
  pushd ${LIBBASH_DIR}
  run lb_repo_root
  assert_output $PWD
  assert_success
}

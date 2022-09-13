PROJECT_ROOT="$(cd "${BATS_TEST_DIRNAME}/.." > /dev/null 2>&1 && pwd)"
export PROJECT_ROOT

load "${PROJECT_ROOT}/test/test_helper/bats-support/load.bash"
load "${PROJECT_ROOT}/test/test_helper/bats-assert/load.bash"

# shellcheck source=/dev/null
source "${PROJECT_ROOT}/init"

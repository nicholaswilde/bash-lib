# git

A library of [git][1] related functions.

## `lb_git_available`

Return `0` if the `git` binary is available.

??? info "Parameters:"

    | Name | Type | Description | Default |
    |------|------|-------------|---------|
    | None | -    | -           | -       |

??? example "Examples:"
    ```shell hl_lines="8" linenums="1"
    --8<-- "examples/git.sh"
    ```

??? quote "Show source code in `init`"
    ```shell hl_lines="10 11 12 13" linenums="1"
    --8<-- "git"
    ```

## `lb_in_git_repo`

Return `0` if the `$(pwd)` is in a repo.

??? info "Parameters:"

    | Name | Type | Description | Default |
    |------|------|-------------|---------|
    | None | -    | -           | -       |

??? example "Examples:"
    ```shell hl_lines="16" linenums="1"
    --8<-- "examples/git.sh"
    ```

??? quote "Show source code in `init`"
    ```shell hl_lines="15 16 17 18" linenums="1"
    --8<-- "git"
    ```

## `lb_repo_root`

Return the path of the repo root directory.

??? info "Parameters:"

    | Name | Type | Description | Default |
    |------|------|-------------|---------|
    | None | -    | -           | -       |

??? example "Examples:"
    ```shell hl_lines="29" linenums="1"
    --8<-- "examples/git.sh"
    ```

??? quote "Show source code in `init`"
    ```shell hl_lines="21 22 23 24" linenums="1"
    --8<-- "git"
    ```

[1]: <https://git-scm.com/>

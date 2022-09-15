# checks

A library of checks.

## `lb_command_exists` `command`

Return `0` if a command exists.

??? info "Parameters:"
    | Name      | Type      | Description               | Default     |
    |-----------|-----------|---------------------------|-------------|
    | `command` | `string`  | The command to check for  | *required*  |

??? example "Examples:"
    ```shell hl_lines="8" linenums="1"
    --8<-- "examples/checks.sh"
    ```

??? quote "Show source code in `checks`"
    ```shell hl_lines="11 12 13" linenums="1"
    --8<-- "checks"
    ```

## `lb_file_exists` `file`

Return `0` if a file exists.

??? info "Parameters:"
    | Name    | Type      | Description             | Default     |
    |---------|-----------|-------------------------|-------------|
    | `file`  | `string`  | The file to check for   | *required*  |

??? example "Examples:"
    ```shell hl_lines="16" linenums="1"
    --8<-- "examples/checks.sh"
    ```

??? quote "Show source code in `checks`"
    ```shell hl_lines="16 17 18" linenums="1"
    --8<-- "checks"
    ```

## `lb_dir_exists` `dir`

Return `0` if a directory exists.

??? info "Parameters:"
    | Name  | Type      | Description           | Default     |
    |-------|-----------|-----------------------|-------------|
    | `dir` | `string`  | The dir to check for  | *required*  |

??? example "Examples:"
    ```shell hl_lines="24" linenums="1"
    --8<-- "examples/checks.sh"
    ```

??? quote "Show source code in `checks`"
    ```shell hl_lines="26 27 28" linenums="1"
    --8<-- "checks"
    ```

## `lb_is_null` `var`

Return `0` if a variable is null.

??? info "Parameters:"
    | Name  | Type      | Description           | Default     |
    |-------|-----------|-----------------------|-------------|
    | `var` | `string`  | The var to check for  | *required*  |

??? example "Examples:"
    ```shell hl_lines="32" linenums="1"
    --8<-- "examples/checks.sh"
    ```

??? quote "Show source code in `checks`"
    ```shell hl_lines="21 22 23" linenums="1"
    --8<-- "checks"
    ```

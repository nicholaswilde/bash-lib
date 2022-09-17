# checks

A library of checks.

## `lb_command_exists` `command`

Return `0` if `command` exists.

??? info "Parameters:"

    | Name      | Type      | Description               | Default     |
    |-----------|-----------|---------------------------|-------------|
    | `command` | `string`  | The command to check for  | *required*  |

??? example "Examples:"

    ```shell hl_lines="8" linenums="1"
    --8<-- "examples/checks.sh"
    ```

??? quote "Show source code in `checks`"

    ```shell hl_lines="11-14" linenums="1"
    --8<-- "checks"
    ```

## `lb_file_exists` `file`

Return `0` if `file` exists.

??? info "Parameters:"

    | Name    | Type      | Description             | Default     |
    |---------|-----------|-------------------------|-------------|
    | `file`  | `string`  | The file to check for   | *required*  |

??? example "Examples:"

    ```shell hl_lines="16" linenums="1"
    --8<-- "examples/checks.sh"
    ```

??? quote "Show source code in `checks`"

    ```shell hl_lines="17-20" linenums="1"
    --8<-- "checks"
    ```

## `lb_dir_exists` `dir`

Return `0` if `dir` exists.

??? info "Parameters:"

    | Name  | Type      | Description                 | Default     |
    |-------|-----------|-----------------------------|-------------|
    | `dir` | `string`  | The directory to check for  | *required*  |

??? example "Examples:"

    ```shell hl_lines="24" linenums="1"
    --8<-- "examples/checks.sh"
    ```

??? quote "Show source code in `checks`"

    ```shell hl_lines="29-32" linenums="1"
    --8<-- "checks"
    ```

## `lb_is_null` `var`

Return `0` if `var` is null.

??? info "Parameters:"

    | Name  | Type      | Description           | Default     |
    |-------|-----------|-----------------------|-------------|
    | `var` | `string`  | The var to check for  | *required*  |

??? example "Examples:"

    ```shell hl_lines="32" linenums="1"
    --8<-- "examples/checks.sh"
    ```

??? quote "Show source code in `checks`"

    ```shell hl_lines="23-26" linenums="1"
    --8<-- "checks"
    ```

## `lb_is_int` `var`

Return `0` if a `var` is an integer.

??? info "Parameters:"

    | Name  | Type      | Description           | Default     |
    |-------|-----------|-----------------------|-------------|
    | `var` | `string`  | The var to check for  | *required*  |

??? example "Examples:"

    ```shell hl_lines="40" linenums="1"
    --8<-- "examples/checks.sh"
    ```

??? quote "Show source code in `checks`"

    ```shell hl_lines="34-37" linenums="1"
    --8<-- "checks"
    ```

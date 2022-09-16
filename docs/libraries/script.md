# script

A library of script related functions.

## `lb_show_usage` `${0}`

Show a script usage message.

??? info "Parameters:"
    | Name  | Type      | Description            | Default     |
    |-------|-----------|------------------------|-------------|
    | `${0}`| `string`  | The name of the script | *required*  |

??? abstract "Variables:"
    | Name                | Type          | Description                     | Default           |
    |---------------------|---------------|---------------------------------|-------------------|
    | `LIBBASH_USAGE_MSG` | [Environmental][1] | The suffix of the usage message | `[OPTIONS] ARGS`  |

??? example "Examples:"
    ```shell hl_lines="12" linenums="1"
    --8<-- "examples/script.sh"
    ```

??? quote "Show source code in `script`"
    ```shell hl_lines="13 14 15" linenums="1"
    --8<-- "script"
    ```

!!! note
    The message has a prefix of `Usage: `

## `lb_show_version` `version`

Show the script version and exit with a status of `0`.

??? info "Parameters:"
    | Name      | Type      | Description               | Default     |
    |-----------|-----------|---------------------------|-------------|
    | `version` | `string`  | The version of the script | *required*  |

??? example "Examples:"
    ```shell hl_lines="13" linenums="1"
    --8<-- "examples/script.sh"
    ```

??? quote "Show source code in `script`"
    ```shell hl_lines="17 18 19 20" linenums="1"
    --8<-- "script"
    ```

## `lb_usage_error` `${0}`

Show the script usage and help options and exit with a status of `1`.

??? info "Parameters:"
    | Name    | Type      | Description             | Default     |
    |---------|-----------|-------------------------|-------------|
    | `${0}`  | `string`  | The name of the script  | *required*  |

??? example "Examples:"
    ```shell hl_lines="14" linenums="1"
    --8<-- "examples/script.sh"
    ```

??? quote "Show source code in `script`"
    ```shell hl_lines="22 23 24 25 26" linenums="1"
    --8<-- "script"
    ```

[1]: <../usage.md#environmental-variables>

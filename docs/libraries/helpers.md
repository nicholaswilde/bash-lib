# helpers

A library of `libbash` helper functions.

!!! note
    This library is automatically loaded by the [`init`][1] library.

!!! note
    This library automatically loads the [`logging`][2] library.

## `lb_die` `msg`

Send a fatal message and exit with a status of `1`.

??? info "Parameters:"

    | Name  | Type      | Description                 | Default     |
    |-------|-----------|-----------------------------|-------------|
    | `msg` | `string`  | The message to be displayed | *required*  |

??? example "Examples:"

    ```shell linenums="1" hl_lines="14"
    --8<-- "examples/helpers.sh"
    ```

??? quote "Show source code in `helpers`"
    ```shell hl_lines="14 15 16 17" linenums="1"
    --8<-- "helpers"
    ```

## `lb_fail` `msg`

Send an error  message and return a status of `1`.

??? info "Parameters:"

    | Name  | Type      | Description                 | Default     |
    |-------|-----------|-----------------------------|-------------|
    | `msg` | `string`  | The message to be displayed | *required*  |

??? example "Examples:"

    ```shell linenums="1" hl_lines="13"
    --8<-- "examples/helpers.sh"
    ```

??? quote "Show source code in `helpers`"
    ```shell hl_lines="19 20 21 22" linenums="1"
    --8<-- "helpers"
    ```

## `lb_check_args_num` `${@}` `num`

Return `0` if the number of arguments passed matches `num`.

??? info "Parameters:"

    | Name    | Type      | Description                           | Default     |
    |---------|-----------|---------------------------------------|-------------|
    | `${@}`  | `string`  | The arguments to check the number of  | *required*  |
    | `num`   | `int`     | The number of arguments to check for  | *required*  |

??? example "Examples:"

    ```shell linenums="1" hl_lines="8"
    --8<-- "examples/helpers.sh"
    ```

??? quote "Show source code in `helpers`"
    ```shell hl_lines="24-37" linenums="1"
    --8<-- "helpers"
    ```

[1]: <./init.md>
[2]: <./logging.md>

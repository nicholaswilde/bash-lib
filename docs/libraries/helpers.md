# helpers

A library of `libbash` helper functions.

## `lb_die` <span style="color:blue">`msg`</span>

Send a fatal message and exit with a status of `1`.

??? info "Parameters:"

    | Name  | Type      | Description                 | Default     |
    |-------|-----------|-----------------------------|-------------|
    | `msg` | `string`  | The message to be displayed | *required*  |

??? example "Examples:"

    ```shell linenums="1" hl_lines="9"
    --8<-- "examples/helpers.sh"
    ```

??? quote "Show source code in `helpers`"
    ```shell hl_lines="14 15 16 17" linenums="1"
    --8<-- "helpers"
    ```

## `lb_fail` <span style="color:blue">`msg`</span>

Send an error  message and return a status of `1`.

??? info "Parameters:"

    | Name  | Type      | Description                 | Default     |
    |-------|-----------|-----------------------------|-------------|
    | `msg` | `string`  | The message to be displayed | *required*  |

??? example "Examples:"

    ```shell linenums="1" hl_lines="8"
    --8<-- "examples/helpers.sh"
    ```

??? quote "Show source code in `helpers`"
    ```shell hl_lines="19 20 21 22" linenums="1"
    --8<-- "helpers"
    ```

# other

A library of other related functions.

## `lb_gen_uuid`

Return a generated uuid v4.

??? info "Parameters:"

    | Name  | Type      | Description | Default |
    |-------|-----------|-------------|---------|
    | None  | -         | -           | -       |

??? example "Examples:"

    ```shell hl_lines="10" linenums="1"
    --8<-- "examples/other.sh"
    ```

??? quote "Show source code in `other`"

    ```shell hl_lines="10-22" linenums="1"
    --8<-- "other"
    ```

## `lb_read_sleep` `time`

Sleep for a certain period of item using the [`read`][1] command.

??? info "Parameters:"

    | Name    | Type      | Description                   | Default     |
    |---------|-----------|-------------------------------|-------------|
    | `time`  | `float`   | The time to sleep in seconds  | *required*  |

??? example "Examples:"

    ```shell hl_lines="9" linenums="1"
    --8<-- "examples/other.sh"
    ```

??? quote "Show source code in `other`"

    ```shell hl_lines="24-27" linenums="1"
    --8<-- "other"
    ```

## `lb_bkr`

Run a script in the background.

??? info "Parameters:"

    | Name  | Type      | Description | Default |
    |-------|-----------|-------------|---------|
    | None  | -         | -           | -       |

??? example "Examples:"

    ```shell
    bkr ./myscript.sh
    ```

??? quote "Show source code in `other`"

    ```shell hl_lines="29-32" linenums="1"
    --8<-- "other"
    ```

[1]: <https://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html#index-read>

# conv

A library of conversion related functions.

## `lb_hex_to_rgb` `hex`

Return an rgb number from a hexidecimal number.

??? info "Parameters:"

    | Name  | Type  | Description                               | Default     |
    |-------|-------|-------------------------------------------|-------------|
    | `hex` | `hex` | hexidecimal number to be converted to rgb | *required*  |

??? example "Examples:"

    ```shell hl_lines="10" linenums="1"
    --8<-- "examples/conv.sh"
    ```

??? quote "Show source code in `conv`"

    ```shell hl_lines="10-15" linenums="1"
    --8<-- "conv"
    ```

## `lb_rgb_to_hex` `r` `g` `b`

Return a lower case hexidecimal number prefixed with a pound symbol.

??? info "Parameters:"

    | Name  | Type  | Description                   | Default     |
    |-------|-------|-------------------------------|-------------|
    | `r`   | `int` | red value from `0` to `255`   | *required*  |
    | `g`   | `int` | green value from `0` to `255` | *required*  |
    | `b`   | `int` | blue value from `0` to `255`  | *required*  |

??? example "Examples:"

    ```shell hl_lines="15" linenums="1"
    --8<-- "examples/conv.sh"
    ```

??? quote "Show source code in `conv`"

    ```shell hl_lines="17-20" linenums="1"
    --8<-- "conv"
    ```

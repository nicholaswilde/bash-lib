# str

A library of string related functions.

## `lb_to_lower` `string`

Convert the string to lower case.

??? info "Parameters:"
    | Name      | Type      | Description                        | Default     |
    |-----------|-----------|------------------------------------|-------------|
    | `string`  | `string`  | The string to conver to lower case | *required*  |

??? example "Examples:"
    ```shell hl_lines="13" linenums="1"
    --8<-- "examples/str.sh"
    ```

??? quote "Show source code in `str`"
    ```shell hl_lines="11 12 13" linenums="1"
    --8<-- "str"
    ```

## `lb_to_upper` `string`

Convert the string to upper case.

??? info "Parameters:"
    | Name      | Type      | Description                        | Default     |
    |-----------|-----------|------------------------------------|-------------|
    | `string`  | `string`  | The string to conver to upper case | *required*  |

??? example "Examples:"
    ```shell hl_lines="13" linenums="1"
    --8<-- "examples/str.sh"
    ```

??? quote "Show source code in `str`"
    ```shell hl_lines="16-18" linenums="1"
    --8<-- "str"
    ```

## `lb_rm_last_char` `string`

Remove the last character of a string.

??? info "Parameters:"
    | Name      | Type      | Description                                         | Default     |
    |-----------|-----------|-----------------------------------------------------|-------------|
    | `string`  | `string`  | The string from which to remove the last character  | *required*  |

??? example "Examples:"
    ```shell hl_lines="19" linenums="1"
    --8<-- "examples/str.sh"
    ```

??? quote "Show source code in `str`"
    ```shell hl_lines="21 22 23" linenums="1"
    --8<-- "str"
    ```

## `lb_get_last_char` `string`

Get the last character of a string.

??? info "Parameters:"
    | Name      | Type      | Description                                     | Default     |
    |-----------|-----------|-------------------------------------------------|-------------|
    | `string`  | `string`  | The string from which to get the last character | *required*  |

??? example "Examples:"
    ```shell hl_lines="22" linenums="1"
    --8<-- "examples/str.sh"
    ```

??? quote "Show source code in `str`"
    ```shell hl_lines="26 27 28" linenums="1"
    --8<-- "str"
    ```

## `lb_length` `string`

Get the length of a string.

??? info "Parameters:"
    | Name      | Type      | Description                             | Default     |
    |-----------|-----------|-----------------------------------------|-------------|
    | `string`  | `string`  | The string from which to get the length | *required*  |

??? example "Examples:"
    ```shell hl_lines="25" linenums="1"
    --8<-- "examples/str.sh"
    ```

??? quote "Show source code in `str`"
    ```shell hl_lines="31 32 33" linenums="1"
    --8<-- "str"
    ```

## `lb_replace` `string` `old` `new`

Return a copy of the string with all occurrences of substring `old` replaced by `new`.

??? info "Parameters:"
    | Name      | Type      | Description                         | Default     |
    |-----------|-----------|-------------------------------------|-------------|
    | `string`  | `string`  | The string that is to be worked on  | *required*  |
    | `old`     | `string`  | The substring to be replaced        | *required*  |
    | `new`     | `string`  | The substring to be replaced by     | *required*  |

??? example "Examples:"
    ```shell hl_lines="28" linenums="1"
    --8<-- "examples/str.sh"
    ```

??? quote "Show source code in `str`"
    ```shell hl_lines="36 37 38" linenums="1"
    --8<-- "str"
    ```

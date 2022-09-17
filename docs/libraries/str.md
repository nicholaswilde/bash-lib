# str

A library of string related functions.

## `lb_to_lower` `string`

Convert the string to lower case.

??? info "Parameters:"

    | Name      | Type      | Description                        | Default     |
    |-----------|-----------|------------------------------------|-------------|
    | `string`  | `string`  | The string to conver to lower case | *required*  |

??? example "Examples:"

    ```shell hl_lines="14" linenums="1"
    --8<-- "examples/str.sh"
    ```

??? quote "Show source code in `str`"

    ```shell hl_lines="13-16" linenums="1"
    --8<-- "str"
    ```

## `lb_to_upper` `string`

Convert the string to upper case.

??? info "Parameters:"

    | Name      | Type      | Description                        | Default     |
    |-----------|-----------|------------------------------------|-------------|
    | `string`  | `string`  | The string to conver to upper case | *required*  |

??? example "Examples:"

    ```shell hl_lines="11" linenums="1"
    --8<-- "examples/str.sh"
    ```

??? quote "Show source code in `str`"

    ```shell hl_lines="19-22" linenums="1"
    --8<-- "str"
    ```

## `lb_rm_last_char` `string`

Remove the last character of a string.

??? info "Parameters:"
    | Name      | Type      | Description                                         | Default     |
    |-----------|-----------|-----------------------------------------------------|-------------|
    | `string`  | `string`  | The string from which to remove the last character  | *required*  |

??? example "Examples:"

    ```shell hl_lines="17" linenums="1"
    --8<-- "examples/str.sh"
    ```

??? quote "Show source code in `str`"

    ```shell hl_lines="25-28" linenums="1"
    --8<-- "str"
    ```

## `lb_get_last_char` `string`

Get the last character of a string.

??? info "Parameters:"

    | Name      | Type      | Description                                     | Default     |
    |-----------|-----------|-------------------------------------------------|-------------|
    | `string`  | `string`  | The string from which to get the last character | *required*  |

??? example "Examples:"

    ```shell hl_lines="20" linenums="1"
    --8<-- "examples/str.sh"
    ```

??? quote "Show source code in `str`"

    ```shell hl_lines="30-34" linenums="1"
    --8<-- "str"
    ```

## `lb_length` `string`

Get the length of a string.

??? info "Parameters:"

    | Name      | Type      | Description                             | Default     |
    |-----------|-----------|-----------------------------------------|-------------|
    | `string`  | `string`  | The string from which to get the length | *required*  |

??? example "Examples:"

    ```shell hl_lines="23" linenums="1"
    --8<-- "examples/str.sh"
    ```

??? quote "Show source code in `str`"

    ```shell hl_lines="36-40" linenums="1"
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

    ```shell hl_lines="26" linenums="1"
    --8<-- "examples/str.sh"
    ```

??? quote "Show source code in `str`"

    ```shell hl_lines="43-47" linenums="1"
    --8<-- "str"
    ```

## `lb_reverse_case` `string`

Return a copy of the string with reverse case.

??? info "Parameters:"

    | Name      | Type      | Description                                         | Default     |
    |-----------|-----------|-----------------------------------------------------|-------------|
    | `string`  | `string`  | The string that is to be converted to reverse case  | *required*  |

??? example "Examples:"

    ```shell hl_lines="29" linenums="1"
    --8<-- "examples/str.sh"
    ```

??? quote "Show source code in `str`"

    ```shell hl_lines="48-51" linenums="1"
    --8<-- "str"
    ```

## `lb_split` `string` [`delimiter`]

Return an array of the `string` components split at the `delimiter`.

??? info "Parameters:"

    | Name        | Type      | Description                                         | Default     |
    |-------------|-----------|-----------------------------------------------------|-------------|
    | `string`    | `string`  | The string that is to be split                      | *required*  |
    | `delimiter` | `string`  | The delimiter that is to be used to split `string`  | *optional*  |

??? abstract "Variables:"

    | Name                | Type      | Description                                                 | Default     |
    |---------------------|-----------|-------------------------------------------------------------|-------------|
    | `LIBBASH_DELIMITER` | `string`  | The default delimiter that is to be used to split `string`  | `,`         |

??? example "Examples:"

    ```shell hl_lines="35" linenums="1"
    --8<-- "examples/str.sh"
    ```

??? quote "Show source code in `str`"

    ```shell hl_lines="53-61" linenums="1"
    --8<-- "str"
    ```

## `lb_trim` `string`

Return a copy of the string with leading and trailing white-space removed.

??? info "Parameters:"

    | Name      | Type      | Description                       | Default     |
    |-----------|-----------|-----------------------------------|-------------|
    | `string`  | `string`  | The string that is to be trimmed  | *required*  |

??? example "Examples:"

    ```shell hl_lines="40" linenums="1"
    --8<-- "examples/str.sh"
    ```

??? quote "Show source code in `str`"

    ```shell hl_lines="63-68" linenums="1"
    --8<-- "str"
    ```

!!! note
    This function does not trim the white-space in between words. See [`lb_trim_all`](#lb_trim_all).

## `lb_trim_all` `string`

Return a copy of the string with leading and trailing white-space removed and truncated spaces in between words.

??? info "Parameters:"

    | Name      | Type      | Description                                     | Default     |
    |-----------|-----------|-------------------------------------------------|-------------|
    | `string`  | `string`  | The string that is to be trimmed and truncated  | *required*  |

??? example "Examples:"

    ```shell hl_lines="45" linenums="1"
    --8<-- "examples/str.sh"
    ```

??? quote "Show source code in `str`"

    ```shell hl_lines="70-84" linenums="1"
    --8<-- "str"
    ```

## `lb_trim_quotes` `string`

Return a copy of the string with single and double quotes removed.

??? info "Parameters:"

    | Name      | Type      | Description                                 | Default     |
    |-----------|-----------|---------------------------------------------|-------------|
    | `string`  | `string`  | The string that is to be trimmed of quotes  | *required*  |

??? example "Examples:"

    ```shell hl_lines="50" linenums="1"
    --8<-- "examples/str.sh"
    ```

??? quote "Show source code in `str`"

    ```shell hl_lines="86-90" linenums="1"
    --8<-- "str"
    ```

## `lb_strip_all` `string` `pattern`

Return a copy of the string with all copies of a pattern stripped.

??? info "Parameters:"

    | Name      | Type      | Description                                       | Default     |
    |-----------|-----------|---------------------------------------------------|-------------|
    | `string`  | `string`  | The string that is to be trimmed of `pattern`     | *required*  |
    | `pattern` | `string`  | The pattern that is to be stripped from `string`  | *required*  |

??? example "Examples:"

    ```shell hl_lines="53" linenums="1"
    --8<-- "examples/str.sh"
    ```

??? quote "Show source code in `str`"

    ```shell hl_lines="92-95" linenums="1"
    --8<-- "str"
    ```

## `lb_strip` `string` `pattern`

Return a copy of the string with the first copy of a pattern stripped.

??? info "Parameters:"

    | Name      | Type      | Description                                       | Default     |
    |-----------|-----------|---------------------------------------------------|-------------|
    | `string`  | `string`  | The string that is to be trimmed of `pattern`     | *required*  |
    | `pattern` | `string`  | The pattern that is to be stripped from `string`  | *required*  |

??? example "Examples:"

    ```shell hl_lines="57" linenums="1"
    --8<-- "examples/str.sh"
    ```

??? quote "Show source code in `str`"

    ```shell hl_lines="97-100" linenums="1"
    --8<-- "str"
    ```

## `lb_lstrip` `string` `pattern`

Return a copy of the string with a pattern stripped from the start of string.

??? info "Parameters:"

    | Name      | Type      | Description                                       | Default     |
    |-----------|-----------|---------------------------------------------------|-------------|
    | `string`  | `string`  | The string that is to be trimmed of `pattern`     | *required*  |
    | `pattern` | `string`  | The pattern that is to be stripped from `string`  | *required*  |

??? example "Examples:"

    ```shell hl_lines="61" linenums="1"
    --8<-- "examples/str.sh"
    ```

??? quote "Show source code in `str`"

    ```shell hl_lines="102-106" linenums="1"
    --8<-- "str"
    ```

## `lb_rstrip` `string` `pattern`

Return a copy of the string with a pattern stripped from the end of string.

??? info "Parameters:"

    | Name      | Type      | Description                                       | Default     |
    |-----------|-----------|---------------------------------------------------|-------------|
    | `string`  | `string`  | The string that is to be trimmed of `pattern`     | *required*  |
    | `pattern` | `string`  | The pattern that is to be stripped from `string`  | *required*  |

??? example "Examples:"

    ```shell hl_lines="65" linenums="1"
    --8<-- "examples/str.sh"
    ```

??? quote "Show source code in `str`"

    ```shell hl_lines="108-112" linenums="1"
    --8<-- "str"
    ```

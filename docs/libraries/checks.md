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

    ```shell hl_lines="34-38" linenums="1"
    --8<-- "checks"
    ```

## `lb_is_float` `var`

Return `0` if a `var` is a float.

??? info "Parameters:"

    | Name  | Type      | Description           | Default     |
    |-------|-----------|-----------------------|-------------|
    | `var` | `string`  | The var to check for  | *required*  |

??? example "Examples:"

    ```shell hl_lines="48" linenums="1"
    --8<-- "examples/checks.sh"
    ```

??? quote "Show source code in `checks`"

    ```shell hl_lines="40-44" linenums="1"
    --8<-- "checks"
    ```

!!! note
    A decimal point with no leading number, such as `1.`, returns `1`.

## `lb_is_bool` `var`

Return `0` if a `var` is a boolean.

??? info "Parameters:"

    | Name  | Type      | Description           | Default     |
    |-------|-----------|-----------------------|-------------|
    | `var` | `string`  | The var to check for  | *required*  |

??? example "Examples:"

    ```shell hl_lines="55" linenums="1"
    --8<-- "examples/checks.sh"
    ```

??? quote "Show source code in `checks`"

    ```shell hl_lines="46-52" linenums="1"
    --8<-- "checks"
    ```

!!! note
    `1` is returned if the `var` is blank or upper case (`TRUE`/`FALSE`)

## `lb_contains` `var` `substring`

Return `0` if a `var` contains `substring`.

??? info "Parameters:"

    | Name        | Type      | Description                         | Default     |
    |-------------|-----------|-------------------------------------|-------------|
    | `var`       | `string`  | The var to check in for `substring` | *required*  |
    | `substring` | `string`  | The substring to check for in `var` | *required*  |

??? example "`string` Examples:"

    ```shell hl_lines="64 151-153" linenums="1"
    --8<-- "examples/checks.sh"
    ```

??? example "`array` Examples:"

    ```shell hl_lines="64 159-161" linenums="1"
    --8<-- "examples/checks.sh"
    ```

??? quote "Show source code in `checks`"

    ```shell hl_lines="54-57" linenums="1"
    --8<-- "checks"
    ```

!!! note
    `var` can be both a `string` or an `array`. When checking in an `array`, use the `${arr[*]}` parameter expansion.

## `lb_starts_with` `var` `substring`

Return `0` if a `var` starts with `substring`.

??? info "Parameters:"

    | Name        | Type      | Description                                       | Default     |
    |-------------|-----------|---------------------------------------------------|-------------|
    | `var`       | `string`  | The var to check at teh start for `substring`     | *required*  |
    | `substring` | `string`  | The substring to check for at the start of `var`  | *required*  |

??? example "`string` Examples:"

    ```shell hl_lines="72 181-182" linenums="1"
    --8<-- "examples/checks.sh"
    ```

??? example "`array` Examples:"

    ```shell hl_lines="72 188-189" linenums="1"
    --8<-- "examples/checks.sh"
    ```

??? quote "Show source code in `checks`"

    ```shell hl_lines="59-62" linenums="1"
    --8<-- "checks"
    ```

!!! note
    `var` can be both a `string` or an `array`. When checking in an `array`, use the `${arr[*]}` parameter expansion.
    If `var` is an array, the function checks if the first element is `substring`.

## `lb_ends_with` `var` `substring`

Return `0` if a `var` ends with `substring`.

??? info "Parameters:"

    | Name        | Type      | Description                                     | Default     |
    |-------------|-----------|-------------------------------------------------|-------------|
    | `var`       | `string`  | The var to check the end for `substring`        | *required*  |
    | `substring` | `string`  | The substring to check for at the end of `var`  | *required*  |

??? example "`string` Examples:"

    ```shell hl_lines="80 195-196" linenums="1"
    --8<-- "examples/checks.sh"
    ```

??? example "`array` Examples:"

    ```shell hl_lines="80 202-203" linenums="1"
    --8<-- "examples/checks.sh"
    ```

??? quote "Show source code in `checks`"

    ```shell hl_lines="64-67" linenums="1"
    --8<-- "checks"
    ```

!!! note
    `var` can be both a `string` or an `array`. When checking in an `array`, use the `${arr[*]}` parameter expansion.
    If `var` is an array, the function checks if the last element is `substring`.

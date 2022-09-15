# logging

A library of logging functions.

!!! note
    This library is automatically loaded by the [`helpers`][1] library.

??? abstract "Variables:"
    | Name                | Type      | Description                   | Default | Options                       |
    |---------------------|-----------|-------------------------------|---------|-------------------------------|
    | `LIBBASH_LOG_LEVEL` | `string`  | The log level during runtime  | `info`  | `debug|info|warn|error|fatal` |
    
!!! note
    `printf` functions currently do not support the passing of multiple parameters.

## `lb_debugf` `msg`

Print a `debug` message without a new line.

??? info "Parameters:"
    | Name  | Type      | Description           | Default     |
    |-------|-----------|-----------------------|-------------|
    | `msg` | `string`  | The message to print  | *required*  |

??? example "Examples:"
    ```shell hl_lines="13" linenums="1"
    --8<-- "examples/logging.sh"
    ```

??? quote "Show source code in `logging`"
    ```shell hl_lines="126-128" linenums="1"
    --8<-- "logging"
    ```

## `lb_infof` `msg`

Print a `info` message without a new line.

??? info "Parameters:"
    | Name  | Type      | Description           | Default     |
    |-------|-----------|-----------------------|-------------|
    | `msg` | `string`  | The message to print  | *required*  |

??? example "Examples:"
    ```shell hl_lines="14" linenums="1"
    --8<-- "examples/logging.sh"
    ```

??? quote "Show source code in `logging`"
    ```shell hl_lines="130-132" linenums="1"
    --8<-- "logging"
    ```

## `lb_warnf` `msg`

Print a `warn` message without a new line.

??? info "Parameters:"
    | Name  | Type      | Description           | Default     |
    |-------|-----------|-----------------------|-------------|
    | `msg` | `string`  | The message to print  | *required*  |

??? example "Examples:"
    ```shell hl_lines="15" linenums="1"
    --8<-- "examples/logging.sh"
    ```

??? quote "Show source code in `logging`"
    ```shell hl_lines="134-136" linenums="1"
    --8<-- "logging"
    ```

## `lb_errorf` `msg`

Print a `error` message without a new line.

??? info "Parameters:"
    | Name  | Type      | Description           | Default     |
    |-------|-----------|-----------------------|-------------|
    | `msg` | `string`  | The message to print  | *required*  |

??? example "Examples:"
    ```shell hl_lines="16" linenums="1"
    --8<-- "examples/logging.sh"
    ```

??? quote "Show source code in `logging`"
    ```shell hl_lines="138-140" linenums="1"
    --8<-- "logging"
    ```

## `lb_fatalf` `msg`

Print a `fatal` message without a new line.

??? info "Parameters:"
    | Name  | Type      | Description           | Default     |
    |-------|-----------|-----------------------|-------------|
    | `msg` | `string`  | The message to print  | *required*  |

??? example "Examples:"
    ```shell hl_lines="17" linenums="1"
    --8<-- "examples/logging.sh"
    ```

??? quote "Show source code in `logging`"
    ```shell hl_lines="142-144" linenums="1"
    --8<-- "logging"
    ```

## `lb_debugln` `msg`

Print a `debug` message with a new line.

??? info "Parameters:"
    | Name  | Type      | Description           | Default     |
    |-------|-----------|-----------------------|-------------|
    | `msg` | `string`  | The message to print  | *required*  |

??? example "Examples:"
    ```shell hl_lines="19" linenums="1"
    --8<-- "examples/logging.sh"
    ```

??? quote "Show source code in `logging`"
    ```shell hl_lines="146-148" linenums="1"
    --8<-- "logging"
    ```

## `lb_infoln` `msg`

Print a `info` message with a new line.

??? info "Parameters:"
    | Name  | Type      | Description           | Default     |
    |-------|-----------|-----------------------|-------------|
    | `msg` | `string`  | The message to print  | *required*  |

??? example "Examples:"
    ```shell hl_lines="20" linenums="1"
    --8<-- "examples/logging.sh"
    ```

??? quote "Show source code in `logging`"
    ```shell hl_lines="150-152" linenums="1"
    --8<-- "logging"
    ```

## `lb_warnln` `msg`

Print a `warn` message with a new line.

??? info "Parameters:"
    | Name  | Type      | Description           | Default     |
    |-------|-----------|-----------------------|-------------|
    | `msg` | `string`  | The message to print  | *required*  |

??? example "Examples:"
    ```shell hl_lines="21" linenums="1"
    --8<-- "examples/logging.sh"
    ```

??? quote "Show source code in `logging`"
    ```shell hl_lines="154-156" linenums="1"
    --8<-- "logging"
    ```

## `lb_errorln` `msg`

Print a `error` message with a new line.

??? info "Parameters:"
    | Name  | Type      | Description           | Default     |
    |-------|-----------|-----------------------|-------------|
    | `msg` | `string`  | The message to print  | *required*  |

??? example "Examples:"
    ```shell hl_lines="22" linenums="1"
    --8<-- "examples/logging.sh"
    ```

??? quote "Show source code in `logging`"
    ```shell hl_lines="158-160" linenums="1"
    --8<-- "logging"
    ```

## `lb_fatalln` `msg`

Print a `fatal` message with a new line.

??? info "Parameters:"
    | Name  | Type      | Description           | Default     |
    |-------|-----------|-----------------------|-------------|
    | `msg` | `string`  | The message to print  | *required*  |

??? example "Examples:"
    ```shell hl_lines="23" linenums="1"
    --8<-- "examples/logging.sh"
    ```

??? quote "Show source code in `logging`"
    ```shell hl_lines="162-164" linenums="1"
    --8<-- "logging"
    ```
[1]: <./helpers.md>

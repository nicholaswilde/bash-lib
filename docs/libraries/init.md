# init

Initialize `libbash`.

??? abstract "Variables:"
    | Name          | Type          | Description                     |
    |---------------|---------------|---------------------------------|
    | `LIBBASH_DIR` | Enviromental  | The absolute path for `libbash` |

!!! note
    This library needs to be loaded before all other libraries so that the `LIBBASH_DIR`
    variable can be loaded.

## `lb_lsf`

List all `libbash` functions.

??? info "Parameters:"
    | Name | Type | Description | Default |
    |------|------|-------------|---------|
    | None | -    | -           | -       |

??? example "Examples:"
    ```shell hl_lines="7" linenums="1"
    --8<-- "examples/init.sh"
    ```

??? quote "Show source code in `init`"
    ```shell hl_lines="22 23 24" linenums="1"
    --8<-- "init"
    ```

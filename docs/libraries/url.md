# :link: url

A library of URL related functions.

## `lb_get_domain` `url`

Return the domain from a url.

??? info "Parameters:"
    | Name  | Type      | Description                           | Default     |
    |-------|-----------|---------------------------------------|-------------|
    | `url` | `string`  | The url from which to get the domain  | *required*  |

??? example "Examples:"
    ```shell hl_lines="11" linenums="1"
    --8<-- "examples/url.sh"
    ```

??? quote "Show source code in `url`"
    ```shell hl_lines="10-13" linenums="1"
    --8<-- "url"
    ```

## `lb_url_encode` `url`

Return a percent-encoded url.

??? info "Parameters:"
    | Name  | Type      | Description       | Default     |
    |-------|-----------|-------------------|-------------|
    | `url` | `string`  | The url to encode | *required*  |

??? example "Examples:"
    ```shell hl_lines="14" linenums="1"
    --8<-- "examples/url.sh"
    ```

??? quote "Show source code in `url`"
    ```shell hl_lines="16-27" linenums="1"
    --8<-- "url"
    ```

## `lb_url_decode` `url`

Return a percent-decoded url.

??? info "Parameters:"
    | Name  | Type      | Description       | Default     |
    |-------|-----------|-------------------|-------------|
    | `url` | `string`  | The url to decode | *required*  |

??? example "Examples:"
    ```shell hl_lines="20" linenums="1"
    --8<-- "examples/url.sh"
    ```

??? quote "Show source code in `url`"
    ```shell hl_lines="29-33" linenums="1"
    --8<-- "url"
    ```

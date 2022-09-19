# file

A library of file related functions.

## `lb_remove_extension` `filename`

Return a file name with the file extension removed.

??? info "Parameters:"

    | Name        | Type      | Description                                           | Default     |
    |-------------|-----------|-------------------------------------------------------|-------------|
    | `filename`  | `string`  | The filename from which to remove the file extension  | *Required*  |

??? example "Examples:"

    ```shell hl_lines="16" linenums="1"
    --8<-- "examples/file.sh"
    ```

??? quote "Show source code in `file`"

    ```shell hl_lines="11-13" linenums="1"
    --8<-- "file"
    ```

!!! note
    The `filename` can also be a file path.

!!! note
    The returned filename excludes all parts of the file extension.

## `lb_get_extension` `filename`

Return a file extension from a filename.

??? info "Parameters:"

    | Name        | Type      | Description                                       | Default     |
    |-------------|-----------|---------------------------------------------------|-------------|
    | `filename`  | `string`  | The filename from which to get the file extension | *Required*  |

??? example "Examples:"

    ```shell hl_lines="13" linenums="1"
    --8<-- "examples/file.sh"
    ```

??? quote "Show source code in `file`"

    ```shell hl_lines="16-18" linenums="1"
    --8<-- "file"
    ```

!!! note
    The `filename` can also be a file path.

!!! note
    The returned file extension includes all parts of the file extension.

## `lb_get_filename` `filepath`

Return a filename from a file path.

??? info "Parameters:"

    | Name        | Type      | Description                                 | Default     |
    |-------------|-----------|---------------------------------------------|-------------|
    | `filepath`  | `string`  | The filepath from which to get the filename | *Required*  |

??? example "Examples:"

    ```shell hl_lines="29" linenums="1"
    --8<-- "examples/file.sh"
    ```

??? quote "Show source code in `file`"

    ```shell hl_lines="20-23" linenums="1"
    --8<-- "file"
    ```

## `lb_get_dir_path` `filepath`

Return a directory path from a file path.

??? info "Parameters:"

    | Name        | Type      | Description                                       | Default     |
    |-------------|-----------|---------------------------------------------------|-------------|
    | `filepath`  | `string`  | The filepath from which to get the directory path | *Required*  |

??? example "Examples:"

    ```shell hl_lines="32" linenums="1"
    --8<-- "examples/file.sh"
    ```

??? quote "Show source code in `file`"

    ```shell hl_lines="26-28" linenums="1"
    --8<-- "file"
    ```

## `lb_get_abs_path` `filepath`

Return an absolute path from a relative file path.

??? info "Parameters:"

    | Name        | Type      | Description                                               | Default     |
    |-------------|-----------|-----------------------------------------------------------|-------------|
    | `filepath`  | `string`  | The relative filepath from which to get the absolute path | *Required*  |

??? example "Examples:"

    ```shell hl_lines="26" linenums="1"
    --8<-- "examples/file.sh"
    ```

??? quote "Show source code in `file`"

    ```shell hl_lines="31-34" linenums="1"
    --8<-- "file"
    ```

## `lb_get_mime_type` `filepath`

Return the mime type of a file.

??? info "Parameters:"

    | Name        | Type      | Description                                   | Default     |
    |-------------|-----------|-----------------------------------------------|-------------|
    | `filepath`  | `string`  | The filepath from which to get the mime type  | *Required*  |

??? example "Examples:"

    ```shell hl_lines="35" linenums="1"
    --8<-- "examples/file.sh"
    ```

??? quote "Show source code in `file`"

    ```shell hl_lines="36-38" linenums="1"
    --8<-- "file"
    ```

## `lb_count` `dirpath`

Return the number of specific files or files and directories in a dirpath glob.

??? info "Parameters:"

    | Name      | Type    | Description                                                     		                      | Default     |
    |-----------|---------|-------------------------------------------------------------------------------------------|-------------|
    | `dirpath` | `glob`  | The dirpath glob from which to get the number of specific files or files and directories  | *Required*  |

??? example "Examples:"

    ```shell title="Files and directories count"
    lb_count ~/Downloads/*
    ```

    ```shell title="Directories count"
    lb_count ~/Downloads/*/
    ```

    ```shell title="Specific files count"
    lb_count ~/Downloads/*.jpg
    ```

    ```shell hl_lines="45 52 59" linenums="1"
    --8<-- "examples/file.sh"
    ```

??? quote "Show source code in `file`"

    ```shell hl_lines="56-59" linenums="1"
    --8<-- "file"
    ```

!!! note
    `dirpath` *must not be* in quotes in order for the glob to evaluate properly.

!!! note
    This function returns the number of files and directories with the `/*` glob pattern.

## `lb_count_files` `dirpath`

Return the number of files or files in a dirpath glob.

??? info "Parameters:"

    | Name        | Type    | Description                                             | Default     |
    |-------------|---------|---------------------------------------------------------|-------------|
    | `dirpath`   | `glob`  | The dirpath glob from which to get the number of files  | *Required*  |

??? example "Examples:"

    ```shell title="Files count"
    lb_count_files "~/Downloads/*"
    ```

    ```shell hl_lines="65" linenums="1"
    --8<-- "examples/file.sh"
    ```

??? quote "Show source code in `file`"

    ```shell hl_lines="61-68" linenums="1"
    --8<-- "file"
    ```

!!! note
    `dirpath` *must be* in quotes in order for the glob to be passed properly.

## `lb_get_lines` `filepath`

Return the number of lines in a file.

??? info "Parameters:"

    | Name        | Type      | Description                                         | Default     |
    |-------------|-----------|-----------------------------------------------------|-------------|
    | `filepath`  | `string`  | The filepath from which to get the number of lines  | *Required*  |

??? example "Examples:"

    ```shell hl_lines="38" linenums="1"
    --8<-- "examples/file.sh"
    ```

??? quote "Show source code in `file`"

    ```shell hl_lines="46-54" linenums="1"
    --8<-- "file"
    ```

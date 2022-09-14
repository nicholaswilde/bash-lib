# Usage

## :books:&nbsp; Libraries

The `init` library must be loaded before loading the other libraries in order to initialize parameters, such the
`LIBBASH_DIR` variable.

| lib       | Description                   |
|-----------|:------------------------------|
| `all`     | Import all libraries          |
| `checks`  | All types of checks           |
| `file`    | File related functions        |
| `git`     | git related functions         |
| `helpers` | Helper functions              |
| `init`    | Initialize `libbash`          |
| `logging` | A bash logging library        |
| `script`  | Script related functions      |
| `str`     | String manipulation functions |

### `init`

Initialize `libbash`.

| Function  | Description               |
|-----------|---------------------------|
| `lb_lsf`  | List `libbash` functions  |

!!! note
    `init` loads the `helpers` and `logging` libraries automatically.

### `helpers`

| Function  | Description |
|-----------|-------------|
| `lb_die`  | -           |
| `lb_fail` | -           |

Helper functions.

### `checks`

All types of checks.

| Function            | Description                 |
|---------------------|-----------------------------|
| `lb_command_exists` | Check if a command exists   |
| `lb_file_exists`    | Check if a file exists      |
| `lb_is_null`        | Check if a variable is null |
| `lb_dir_exists`     | Check if a directory exists |

### `file`

File related functions.

### `git`

git related functions.

### `logging`

A bash logging library.

### `script`

Script related functions.

### `str`

String manipulation functions.

### `all`

Import all libraries.

## :rocket:&nbsp; Variables

| Name                | Description                           | lib       |
|---------------------|---------------------------------------|-----------|
| `LIBBASH_DIR`       | The absolute path for libbash         | `init`    |
| `LIBBASH_LOG_LEVEL` | The log level                         | `logging` |
| `LIBBASH_USAGE_MSG` | The usage message for `lb_show_usage` | `script`  |

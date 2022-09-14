# :books:&nbsp; Libraries

## `init`

!!! note
    The `init` library must be loaded before loading the other libraries in order to initialize parameters, such the
    `LIBBASH_DIR` variable.

Initialize `libbash`.

| Function  | Description               |
|-----------|---------------------------|
| `lb_lsf`  | List `libbash` functions  |

```bash title="How to import in script"
source "${LIBBASH_DIR}/init"
```

!!! note
    `init` loads the `helpers` and `logging` libraries automatically.

## `helpers`

Helper functions.

| Function  | Description |
|-----------|-------------|
| `lb_die`  | -           |
| `lb_fail` | -           |

```bash title="How to import in script"
source "${LIBBASH_DIR}/helpers"
```

!!! note
    `helpers` is automatically loaded by `init`.

## `checks`

All types of checks.

| Function            | Description                 |
|---------------------|-----------------------------|
| `lb_command_exists` | Check if a command exists   |
| `lb_file_exists`    | Check if a file exists      |
| `lb_is_null`        | Check if a variable is null |
| `lb_dir_exists`     | Check if a directory exists |

```bash title="How to import in script"
source "${LIBBASH_DIR}/checks"
```

## `file`

File related functions.

| Function              | Description                                   |
|-----------------------|-----------------------------------------------|
| `lb_remove_extension` | Remove the file extension                     |
| `lb_get_extension`    | Get the file extension                        |
| `lb_get_filename`     | Get the file extension                        |
| `lb_get_dir_path`     | Get the directory path                        |
| `lb_get_abs_path`     | Get the absolute path of a file or directory  |
| `lb_get_mime_type`    | Get the mime type of a file                   |

```bash title="How to import in script"
source "${LIBBASH_DIR}/file"
```

## `git`

git related functions.

| Function              | Description                             |
|-----------------------|-----------------------------------------|
| `lb_git_available`    | Check if `git` is available             |
| `lb_in_git_repo`      | Check if `$(PWD)` is within a git repo  |
| `lb_repo_root`        | Get the repo root directory             |

```bash title="How to import in script"
source "${LIBBASH_DIR}/git"
```

## `logging`

A bash logging library.

| Function      | Description                                 |
|---------------|---------------------------------------------|
| `lb_debugf`   | Print a debug message without a new line    |
| `lb_infof`    | Print an info message without a new line    |         
| `lb_warnf`    | Print a warning message without a new line  |
| `lb_errorf`   | Print an error message without a new line   |
| `lb_fatalf`   | Print a fatal message without a new line    |
| `lb_debugln`  | Print a debug message with a new line       |
| `lb_infoln`   | Print an info message with a new line       |
| `lb_warnln`   | Print a warning message with a new line     |
| `lb_errorln`  | Print an error message with a new line      |
| `lb_fatalln`  | Print a fatal message with a new line       |

```bash title="How to import in script"
source "${LIBBASH_DIR}/logging"
```

!!! note
    `logging` is automatically loaded by `helpers`.

## `script`

Script related functions.

| Function          | Description                                                           |
|-------------------|-----------------------------------------------------------------------|
| `lb_show_usage`   | Show script usage message                                             |
| `lb_show_version` | Show script version and exit with a return value of `0`               |
| `lb_usage_error`  | Show script usage and help messages and exit with return value of `1` |

```bash title="How to import in script"
source "${LIBBASH_DIR}/script"
```

## `str`

String manipulation functions.

| Function            | Description                         |
|---------------------|-------------------------------------|
| `lb_to_lower`       | Convert the string to lower case    |
| `lb_to_upper`       | Convert the string to upper case    |
| `lb_rm_last_char`   | Remove the last character           |
| `lb_get_last_char`  | Get the last character of a string  |
| `lb_length`         | Get the length of a string          |
| `lb_replace`        | Replace a component of a string     |

```bash title="How to import in script"
source "${LIBBASH_DIR}/str"
```

## `all`

Import all libraries.

## :rocket:&nbsp; Variables

| Name                | Description                           | lib       |
|---------------------|---------------------------------------|-----------|
| `LIBBASH_DIR`       | The absolute path for libbash         | `init`    |
| `LIBBASH_LOG_LEVEL` | The log level                         | `logging` |
| `LIBBASH_USAGE_MSG` | The usage message for `lb_show_usage` | `script`  |

```bash title="How to import in script"
source "${LIBBASH_DIR}/all"
```

!!! note
    When importing the `all` library, none of the other libraries need to be imported except for the `init` library.

[1]: <https://github.com/nicholaswilde/libbash/tree/main/examples>

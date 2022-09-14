## :rocket:&nbsp; Variables

| Name                | Description                           | Type    | Default                       | lib       |
|---------------------|---------------------------------------|---------|-------------------------------|-----------|
| `LIBBASH_DIR`       | The absolute path for `libbash`       | Static  | N/A                           | `init`    |
| `LIBBASH_LOG_LEVEL` | The log level                         | Dynamic | `debug|info|warn|error|fatal` | `logging` |
| `LIBBASH_USAGE_MSG` | The usage message for `lb_show_usage` | Dynamic | `[OPTIONS] ARGS`              | `script`  |

The variables may be overwritten at runtime by adding it to the script after the importation of the library.

```shell title="Example"
...
source "${LIBBASH_DIR}/logging"
LIBBASH_LOG_LEVEL=debug
...
```

!!! note
    Currently, variables can not be set during the execution of of the script, such as
    `LIBBASH_LOG_LEVEL=debug ./myscript.sh`

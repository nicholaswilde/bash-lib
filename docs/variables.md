## :rocket:&nbsp; Variables

| Name                | Description                           | Type    | Default                       | lib       |
|---------------------|---------------------------------------|---------|-------------------------------|-----------|
| `LIBBASH_DIR`       | The absolute path for `libbash`       | Static  | N/A                           | `init`    |
| `LIBBASH_LOG_LEVEL` | The log level                         | Dynamic | `debug|info|warn|error|fatal` | `logging` |
| `LIBBASH_USAGE_MSG` | The usage message for `lb_show_usage` | Dynamic | `[OPTIONS] ARGS`              | `script`  |

Variables can either by specified inside of the script, during runtime, or as an environmental variable.

```shell title="Inside of script"
...
source "${LIBBASH_DIR}/logging"
LIBBASH_LOG_LEVEL=debug
...
```

```shell title="Runtime"
LIBBASH_LOG_LEVEL=debug ./myscript.sh
```

```shell title="Environmental variable"
LIBBASH_LOG_LEVEL=debug
./myscript.sh
```

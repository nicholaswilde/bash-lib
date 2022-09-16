# Usage

See [examples][1] for how to use the libraries and functions.

## Script

```shell
myproject
├─ myscript.sh
└─ libbash
```

```shell title="Example script"
#!/bin/bash

# shellcheck source=/dev/null
source ./libbash/init
source "${LIBBASH_DIR}/logging"

lb_infoln "infoln test"
```

## Environmental Variables

Environmental variables are used to set some options for the library. They can be set a few different ways.

=== "Script"
    ```shell
    #!/bin/bash

    source ./libbash/init
    source ${LIBBASH_DIR}/script
    FOO=BAR
    ...
    ```

=== "Runtime"
    ```shell
    FOO=BAR ./myscript.sh
    ```
    
=== "Environment"
    ```shell
    FOO=BAR
    ./myscript ./myscript.sh
    ```

[1]: <https://github.com/nicholaswilde/libbash/tree/main/examples>

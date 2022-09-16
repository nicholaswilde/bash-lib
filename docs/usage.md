# :chart_with_downwards_trend: Usage

See [examples][1] for how to use the libraries and functions.

## :scroll: Script

=== "Manual"
    ```shell title="myscript.sh"
    #!/bin/bash

    # shellcheck source=/dev/null
    source ./libbash/init
    source "${LIBBASH_DIR}/logging"

    lb_infoln "infoln test"
    ```

=== "Task"
    ```shell title="From the libbash dir"
    task new-script SCRIPT=myscript
    mv ./myscript.sh /to/myproject/myscript.sh
    ```

    !!! note
        Task automatically adds an `sh` file extension to the script file name.

## :camping: Environmental Variables

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
    ./myscript.sh
    ```

[1]: <https://github.com/nicholaswilde/libbash/tree/main/examples>

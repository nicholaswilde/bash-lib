# :chart_with_downwards_trend: Usage

## :scroll: Script

=== "Task"
    ```shell title="From the libbash root dir"
    task new-script SCRIPT=myscript
    mv ./myscript.sh /to/myproject/myscript.sh
    ```

    !!! note
        Task automatically adds an `sh` file extension to the script filename.

=== "Manual"
    ```shell title="myscript.sh"
    #!/bin/bash

    # shellcheck source=/dev/null
    source ./libbash/init
    source "${LIBBASH_DIR}/logging"

    lb_infoln "infoln test"
    ```

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

## :jigsaw: Examples

[Example scripts][1] exist to demonstrate how to use the libraries and functions

!!! note
    Example scripts need to be ran inside of the `examples` directory.

=== "Task"
    ```shell
    task example EXAMPLE=logging
    ```

=== "Manual"
    ```shell
    cd examples
    ./logging.sh
    ```

[1]: <https://github.com/nicholaswilde/libbash/tree/main/examples>

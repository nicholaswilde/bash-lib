# :building_construction: Development

## :robot: Task

[Task][1] is used to automate tasks.

!!! note
    Task needs to be executed in the root of `libbash` repo.

## :sparkles: Creating a New Library

=== "Task"
    ```shell
    task new-lib LIB=mynewlib
    ```
    !!! note
        The `new-lib` task creates a `lib`, `example`, and `doc` file.

=== "Manual"
    ```shell
    cp ./templates/lib.tmpl ./mynewlib
    ```

## :page_facing_up: Templates

[Template files][2] exist to make it easier to create new files. Template files end with the `tmpl` file extension.

## :jigsaw: Examples

[Example scripts][3] exist to demonstrate how to use the libraries and functions

!!! note
    Example scripts need to be ran inside of the `examples` directory.

```shell title="Example"
libbash/examples$ ./logging.sh
```

## :test_tube: Unit Tests

[bats-core][4] is used to automate the testing of the libraries.

=== "Task"
    ```shell title="Run all tests"
    task test
    ```

    ```shell title="Run a single test"
    task test-lib LIB=logging
    ```

=== "Manual"
    ```shell title="Run all tests"
    ./test/bats/bin/bats --tap test
    ```

    ```shell title="Run a single test"
    ./test/bats/bin/bats ./test/logging.bats
    ```

[1]: <https://taskfile.dev/>
[2]: <https://github.com/nicholaswilde/libbash/tree/main/templates>
[3]: <https://github.com/nicholaswilde/libbash/tree/main/examples>
[4]: <https://bats-core.readthedocs.io/en/stable/>

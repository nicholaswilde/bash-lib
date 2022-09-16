# Development

## :robot: Task

[Task][1] is used to automate tasks.

!!! note
    Task needs to be executed in the root of `libbash` repo.

## Templates

[Template files][2] exist to make it easier to create new files.
Template files end with the 'tmpl' file extension.

## Creating a New Library

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

[1]: <https://taskfile.dev/>
[2]: <https://github.com/nicholaswilde/libbash/tree/main/templates>

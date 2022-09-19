<!-- markdownlint-disable-next-line no-trailing-punctuation -->
# :rocket: libbash :robot:

[![ci](https://img.shields.io/github/workflow/status/nicholaswilde/libbash/ci?label=ci&style=for-the-badge)](https://github.com/nicholaswilde/libbash/actions/workflows/ci.yaml)
[![tests](https://img.shields.io/github/workflow/status/nicholaswilde/libbash/ci?label=tests&style=for-the-badge)](https://github.com/nicholaswilde/libbash/actions/workflows/tests.yaml)
[![task](https://img.shields.io/badge/task-enabled-brightgreen?logo=task&logoColor=white&style=for-the-badge)](https://taskfile.dev/)

A collection of common bash libraries.

## :rocket:&nbsp; TL;DR

### :floppy_disk:&nbsp; Installation

=== "From within a git repo"

    ```shell title="From the script directory"
    git submodule add https://github.com/nicholaswilde/libbash
    ```

=== "From outside a git repo"

    ```shell title="From the script directory"
    git clone https://github.com/nicholaswilde/libbash.git
    ```


### :gear:&nbsp; Usage

```shell title="myscript.sh"
#!/usr/bin/env bash

# shellcheck source=/dev/null
source ./libbash/init
source "${LIBBASH_DIR}/str"

lb_to_upper_all foo
```

### :arrow_up:&nbsp; Update

From the base dir with `libbash` submodule installed.

```shell
git submodule update --init --recursive --remote
```

## :bulb:&nbsp; Inspiration

Inspiration for this repository has been taken from [cyberark/bash-lib][2] and [dylanaraps/pure-bash-bible][3].

## :scales:&nbsp;​License

​[Apache 2.0 License](../LICENSE)

## :pencil:&nbsp;​Author

​This project was started in 2022 by [Nicholas Wilde][1].

[1]: <https://github.com/nicholaswilde/>
[2]: <https://github.com/cyberark/bash-lib>
[3]: <https://github.com/dylanaraps/pure-bash-bible>

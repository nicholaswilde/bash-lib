<!-- markdownlint-disable-next-line no-trailing-punctuation -->
# :rocket: libbash :robot:

[![ci](https://img.shields.io/github/workflow/status/nicholaswilde/libbash/ci?label=ci&style=for-the-badge)](https://github.com/nicholaswilde/libbash/actions/workflows/ci.yaml)
[![task](https://img.shields.io/badge/task-enabled-brightgreen?logo=task&logoColor=white&style=for-the-badge)](https://taskfile.dev/)

A collection of common bash libraries.

## :rocket:&nbsp; TL;DR

### :floppy_disk:&nbsp; Installation

```shell title="From the script directory"
git submodule add https://github.com/nicholaswilde/libbash 
```

### :gear:&nbsp; Usage

```shell title="myscript.sh"
#!/bin/bash

# shellcheck source=/dev/null
source ./libbash/init
source "${LIBBASH_DIR}/logging"

lb_infoln "infoln test"
```

### :arrow_up:&nbsp; Update

From the base dir with `libbash` submodule installed.

```shell
git submodule update --remote
```

## :bulb:&nbsp; Inspiration

Inspiration for this repository has been taken from [cyberark/bash-lib][2].

## :scales:&nbsp;​License

​[Apache 2.0 License](../LICENSE)

## :pencil:&nbsp;​Author

​This project was started in 2022 by [Nicholas Wilde][1].

[1]: <https://github.com/nicholaswilde/>
[2]: <https://github.com/cyberark/bash-lib>

<!-- markdownlint-disable-next-line no-trailing-punctuation -->
# :rocket: libbash :robot:

[![ci](https://img.shields.io/github/workflow/status/nicholaswilde/libbash/ci?label=ci&style=for-the-badge)](https://github.com/nicholaswilde/libbash/actions/workflows/ci.yaml)
[![tests](https://img.shields.io/github/workflow/status/nicholaswilde/libbash/ci?label=tests&style=for-the-badge)](https://github.com/nicholaswilde/libbash/actions/workflows/tests.yaml)
[![task](https://img.shields.io/badge/Task-Enabled-brightgreen?style=for-the-badge&logo=task&logoColor=white)](https://taskfile.dev/#/)

A collection of common bash libraries

---

## :rocket:&nbsp; TL;DR

### :floppy_disk:&nbsp; Installation

From within a git repo.

```shell
git submodule add https://github.com/nicholaswilde/libbash
```

From outside a git repo.

```shell
git clone https://github.com/nicholaswilde/libbash.git
```


### :gear:&nbsp; Usage

```shell
#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# shellcheck source=/dev/null
source "${DIR}/libbash/init"
source "${LIBBASH_DIR}/str"

lb_to_upper_all "foo"
```

### :arrow_up:&nbsp; Update

From the base dir with `libbash` submodule installed.

```shell
git submodule update --init --recursive --remote
```

---

## :book:&nbsp; Documentation

Documentation can be found [here][3].

---

## :bulb:&nbsp; Inspiration

Inspiration for this repository has been taken from [cyberark/bash-lib][1] and [dylanaraps/pure-bash-bible][4].

---

## :balance_scale:&nbsp; License

[Apache License 2.0](./LICENSE)

---

## :pencil:&nbsp; Author

This project was started in 2022 by [Nicholas Wilde][2].

[1]: <https://github.com/cyberark/bash-lib>
[2]: <https://github.com/nicholaswilde/>
[3]: <http://nicholaswilde.io/libbash>
[4]: <https://github.com/dylanaraps/pure-bash-bible>

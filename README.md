# :rocket: libbash :robot:
[![ci](https://img.shields.io/github/workflow/status/nicholaswilde/libbash/ci?label=ci&style=for-the-badge)](https://github.com/nicholaswilde/libbash/actions/workflows/ci.yaml)
[![task](https://img.shields.io/badge/Task-Enabled-brightgreen?style=for-the-badge&logo=task&logoColor=white)](https://taskfile.dev/#/)

A collection of common bash libraries

---

## :rocket:&nbsp; TL;DR

### :floppy_disk:&nbsp; Installation

```shell
git submodule add https://github.com/nicholaswilde/libbash 
```

### :gear:&nbsp; Usage

```shell
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

---

## :book:&nbsp; Documentation

​Documentation can be found [here][3].

---

## :books:&nbsp; Libraries

| lib       | Description               |
|-----------|:--------------------------|
| `all`     | Import all libraries      |
| `checks`  | All types of checks       |
| `file`    | File related functions    |
| `git`     | git related functions     |
| `init`    | Initialize `libbash`      |
| `logging` | A bash logging library    |
| `script`  | Script related functions  |
| `str`     | String manipulation       |

---

## :rocket:&nbsp; Variables

| Name                | Description                           | lib       |
|---------------------|---------------------------------------|-----------|
| `LIBBASH_DIR`       | The absolute path for libbash         | `init`    |
| `LIBBASH_LOG_LEVEL` | The log level                         | `logging` |
| `LIBBASH_USAGE_MSG` | The usage message for `lb_show_usage` | `script`  |

---

## :bulb:&nbsp; Inspiration

Inspiration for this repository has been taken from [cyberark/bash-lib][1].

---

## :balance_scale:&nbsp; License

[Apache License 2.0](./LICENSE)

---

## :pencil:&nbsp; Author

This project was started in 2022 by [Nicholas Wilde][2].

[1]: <https://github.com/cyberark/bash-lib>
[2]: <https://github.com/nicholaswilde/>
[3]: <http://nicholaswilde.io/libbash>

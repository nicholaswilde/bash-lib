# bash-lib
A library of common bash functions

---

## :rocket:&nbsp; TL;DR

### :floppy_disk:&nbsp; Installation

```shell
git submodule add git@github.com:nicholaswilde/bash-lib 
```

### :gear:&nbsp; Usage

```shell
#!/bin/bash
# Initialize bash-lib
. ./bash-lib/init
# Source the git library
. ${BASH_LIB_DIR}/git/lib

# Go down a few dirs
mkdir -p a/b/c
cd a/b/c
# Determine the root of the current repo
repo_root
```

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

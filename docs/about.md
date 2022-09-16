# :mag_right: About

The purpose of the `libbash` project is to create a collection of bash libraries to centralize common functions that
can be shared across multiple projects. That way, if a bug if fixed in a library function, each project doesn't
need to be updated manually.

Functions are organized into libraries into separate libraries for better organization. Each library may be imported
individually in order to reduce the amount of overhead during loading. Some libraries, however, are imported
automatically by the [`init`][1] library.

## :card_index_dividers: Organization

### :books: Libraries

Each library is located in the root of the `libbash` repository in order to reduce the length of the import path. The
downside to this method is that it becomes difficult to determine which files are libraries.

## Naming Conventions

### :classical_building: Public Functions

Public functions are prefixed with `lb_` to help determine which functions are being supplied by `libbash`.

### :lock: Private Functions

Private functions are prefixed with `_lb_` and are not meant to be used outside of `libbash`, even though they can be.

[1]: <./libraries/init.md>

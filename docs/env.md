## Environment variables

### The `.env` file

The `.env` file is responsible for storing [user defined environment variables](#user-defined-environment-variables), such as the list of enabled [dependencies](#dependencies)

It is [automatically created](./make/utils/env.mk) on each invocation of `make`, and can be removed either manually or with the `make clean` recipe.

### User defined environment variables

Those are the variables that are stored in the [the `.env` file](#the-env-file)

| Name                  | Aliases               | Description               | Default value
|:--                    |:--                    |:--                        |:--
| `DEPENDENCIES`        | `DEPS`                | Enables [dependencies](#dependencies) | `null`
| `BIN_DIR`             |                       | The directory where dependencies binairies will be downloaded.<br/>This variable is only available if the `host` [special dependency](#special-dependencies) is enabled | `~/.local/bin`

### Special variables

Those are the variables that are **not** stored in [the `.env` file](#the-env-file)

They can either be overrided through the command line or directly from the main Makefile

| Name                  | Aliases               | Description               | Default value
|:--                    |:--                    |:--                        |:--
| `VERBOSE`             |                       | Enables make recipes verbosity | `undefined`
| `NOCOLORS`            |                       | Disables colored display | `undefined`
| `HELP_HEADER`         |                       | Provides a custom [helper header](./make/utils/help.mk) | `undefined`
| `HELP_LINE_PADDING`   |                       | Defines a custom padding for the [helper](./make/utils/help.mk) lines | `16`

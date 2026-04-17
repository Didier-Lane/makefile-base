## Environment variables

### The `.env` file

The `.env` file is responsible for storing environment variables, such as the list of enabled [dependencies].

It is automatically created on each invocation of `make` through the `.env` [target] declared in the [make/utils/env.mk] Makefile.

It can be removed either manually or with the [clean] target.

### Stored environment variables

Variables stored in the [`.env`] file are those parsed from the included Makefiles which are declared with a [conditional variable assignment].

| Name                  | Aliases               | Description                       | Default value
|:--                    |:--                    |:--                                |:--
| `DEPENDENCIES`        | `DEPS`                | List of enabled [dependencies]    | `null`
| `BIN_DIR`             |                       | The directory where dependencies binairies will be downloaded.<br/>This variable is only available if the `host` [special dependency] is enabled | `~/.local/bin`

### Special variables

Special variables are **not** stored in the [`.env`] file and can either be overrided through the command line or directly from a Makefile.

| Name                  | Aliases               | Description                       | Default value
|:--                    |:--                    |:--                                |:--
| `VERBOSE`             |                       | Enables make recipes verbosity    | `undefined`
| `NOCOLORS`            |                       | Disables colored [display]        | `undefined`
| `HELP_HEADER`         |                       | Custom [helper] header            | `undefined`
| `HELP_LINE_PADDING`   |                       | Custom [helper] line padding      | `16`

[`.env`]: #the-env-file
[dependencies]: ./deps.md
[clean]: ./clean.md
[make/utils/env.mk]: ../make/utils/env.mk
[target]: https://www.gnu.org/software/make/manual/make.html#What-a-Rule-Looks-Like
[conditional variable assignment]: https://www.gnu.org/software/make/manual/make.html#Conditional-Variable-Assignment
[display]: ./display.md#disabling-colors
[helper]: ./help.md
[special dependency]: ./deps.md#special-dependencies

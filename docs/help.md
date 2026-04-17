## Helper

The [help] utility Makefile provides an helper to present the available commands to the user.

It parses the [targets] having a comment in the [prerequisites] line of the included Makefiles.

For example, the `clean` and `help` [targets] contains the following comments in their [prerequisites].

```shell
clean: # ✨ Cleans the working copy
help: # 💡 Shows this help menu
```

Which results of the following content displayed by the helper in the `Available Targets`.

```shell
Usage

# To run and execute a target
make <target>

Available Targets

clean           ✨ Cleans the working copy
help            💡 Shows this help menu
```

### Invoking

Invoking the `help` target is available in the following ways

- invoking `make help`
- invoking `make` without any target as it is the [default goal]
- invoking `make` with an undefined target

For example, invoking the undefined `foo` target will show the helper.

```shell
$ make foo
Usage

# To run and execute a target
make <target>

Available Targets

clean           ✨ Cleans the working copy
help            💡 Shows this help menu
```

[help]: ../make/utils/help.mk
[prerequisites]: https://www.gnu.org/software/make/manual/make.html#Rule-Syntax
[targets]: https://www.gnu.org/software/make/manual/make.html#What-a-Rule-Looks-Like
[default goal]: https://www.gnu.org/software/make/manual/make.html#Other-Special-Variables

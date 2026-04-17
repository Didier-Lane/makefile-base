## Clean

The [clean recipe](../make/clean.mk) is responsible for removing the project generated files that are not meant to be staged by git.

By default it removes only the [`.env`](./env.md) file from the project.

This can be customized with the Make variable `CLEAN_COMMAND` from a Makefile.

For example, if you need to remove a generated `config.json` file on cleanup customize the `CLEAN_COMMAND` variable as bellow

```shell
define CLEAN_COMMAND
rm -f .env config.json
endef
```

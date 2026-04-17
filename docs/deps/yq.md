## YQ

The `yq` [dependency] is responsible for downloading and installing [YQ command-line YAML processor][YQ], it is controlled by the [make/deps/yq.mk] Makefile.

To Enable it, add `yq` to the `DEPENDENCIES` [environment variable] when invoking make to create the [`.env`] file.

```shell
make DEPENDENCIES=yq
```

Then once the `yq` dependency is enabled, you can use it as a [prerequisite] of a recipe.

```shell
test.yaml: yq
    yq -n '.foo = "bar"' > test.yaml
```
>[!TIP]
>The above example declares a [target] `test.yaml`, it will automatically install [YQ] when invoking `make test.yaml` because it has `yq` as [prerequisite].

[dependency]: ../deps.md
[YQ]: https://github.com/mikefarah/yq
[make/deps/yq.mk]: ../../make/deps/yq.mk
[`.env`]: ../env.md#the-env-file
[environment variable]: ../env.md#user-defined-environment-variables
[target]: https://www.gnu.org/software/make/manual/make.html#What-a-Rule-Looks-Like
[prerequisite]: https://www.gnu.org/software/make/manual/make.html#Rule-Syntax

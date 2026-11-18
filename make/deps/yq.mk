YQ_REPOSITORY	:= mikefarah/yq
YQ_VERSION		:= v4.54.3
YQ_DIGEST		:= sha256:129534601871538efe0ba4c5e62a34fb1d5f469bcb975c4fddeb467d82974973
YQ_ASSET		:= yq_$(OS)_$(ARCH)
YQ_DOWNLOAD_URL	:= https://github.com/$(YQ_REPOSITORY)/releases/download/$(YQ_VERSION)/$(YQ_ASSET)
YQ_BIN			:= $(BIN_DIR)/yq

$(YQ_BIN): $(BIN_DIR)
	if [[ ! -f "$(YQ_BIN)" ]] || [[ "$$( yq --version | grep -Eo 'v([0-9\.]+)$$' )" != "$(YQ_VERSION)" ]]; then
		$(call release_install,YQ,$(YQ_VERSION),$(YQ_DOWNLOAD_URL),$(YQ_DIGEST),$(YQ_BIN))
	fi

.PHONY: yq
yq: $(YQ_BIN)

.PHONY: yq/check
yq/check: jq
	$(call github_check_release_version,$(YQ_REPOSITORY),$(YQ_VERSION),$(YQ_ASSET))

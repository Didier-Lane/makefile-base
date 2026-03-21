.env:
	cat << EOF > .env
	VERBOSE=$(VERBOSE)
	COLORS=$(COLORS)
	EOF

.DEFAULT: .env;
	$(MAKE) help

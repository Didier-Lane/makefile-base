.env:
	cat << EOF > .env
	VERBOSE=$(VERBOSE)
	COLORS=$(COLORS)
	EOF

%:: .env;

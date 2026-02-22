.env:
	cat << EOF > .env
	VERBOSE=$(VERBOSE)
	EOF

%:: .env;

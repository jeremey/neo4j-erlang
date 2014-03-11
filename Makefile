
.PHONY: all compile deps clean clean-deps distclean


all: compile


deps:
	rebar get-deps


compile:
	rebar compile


clean:
	rebar clean
	rm -rf ebin 


clean-deps:
	rebar delete-deps
	rm -rf deps 


distclean: clean clean-deps


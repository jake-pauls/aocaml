.PHONY build:
build:
	$(MAKE) fmt
	dune build 

.PHONY clean:
clean:
	dune clean

.PHONY fmt:
fmt:
	dune fmt
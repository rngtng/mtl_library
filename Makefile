
.PHONY: test

out.mtl:
	_pre-compiler/preproc.pl test/test.mtl > out.mtl

test: out.mtl
	mtl_simu --source out.mtl

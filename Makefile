
.PHONY: test

out.mtl: lib/* test/* test/*/*
	_pre-compiler/preproc.pl test/test.mtl > out.mtl

test: out.mtl
	echo "dummy input" | mtl_simu --source out.mtl | grep -v byte
	@make clean

clean:
	rm -f dumbbc.c *.bin

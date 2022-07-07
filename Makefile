all: compile
	echo Compiled successfully

dir:
	[ -d build ] || mkdir build

compile: dir
	fpc -Px86_64 -FE"build" -o"program" src/program.pas && rm build/*.o build/*.ppu

compile_test: dir
	fpc -Px86_64 -FE"build" -o"test" -Fusrc test/test.pas && rm build/*.o build/*.ppu

test: compile_test
	build/test

clean:
	rm -f build/*

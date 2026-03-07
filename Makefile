all: compile

dir:
	[ -d build ] || mkdir build

compile: dir
	fpc -Px86_64 -FE"build" -o"UnitConverter" src/program.pas && rm build/*.o build/*.ppu

test: test-bin
	./build/test

test-bin: dir
	fpc -Px86_64 -FE"build" -o"test" -Fu"src" tests/program.pas && rm build/*.o build/*.ppu

clean:
	rm -f build/*

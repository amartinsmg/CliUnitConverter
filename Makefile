all: compile

dir:
	[ -d build ] || mkdir build

compile: dir
	fpc -Px86_64 -FE"build" -o"unitconverter" src/program.pas && rm build/*.o build/*.ppu

test: dir
	fpc -Px86_64 -FE"build" -o"test" -Fu"src" src/test/program.pas && rm build/*.o build/*.ppu

clean:
	rm -f build/*

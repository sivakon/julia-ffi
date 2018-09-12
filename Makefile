ifeq ($(shell uname),Darwin)
    EXT := dylib
else
    EXT := so
endif

all: target/debug/libdouble_input.$(EXT)
	/Applications/Julia-1.0.app/Contents/Resources/julia/bin/julia src/main.jl

target/debug/libdouble_input.$(EXT): src/lib.rs Cargo.toml
	cargo build

clean:
	rm -rf target
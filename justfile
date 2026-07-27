default: run

build:
    git add -A && nix build

run: build
    ./result/bin/st


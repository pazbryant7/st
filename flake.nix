{
  description = "My st (simple terminal) build";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs =
    { nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        packages.default = pkgs.st.overrideAttrs (old: {
          src = ./.;
        });
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
            clang-tools
            patch
            just
          ];
        };
        formatter = pkgs.nixfmt-tree;
      }
    );
}

{
  description = "Elyth's NeoVim configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    tree-sitter-nu = {
      url = "github:nushell/tree-sitter-nu";
      flake = false;
    };
    pre-commit-hooks = {
      url = "github:cachix/pre-commit-hooks.nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, nixvim, flake-parts, tree-sitter-nu, pre-commit-hooks
    , ... }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems =
        [ "aarch64-linux" "x86_64-linux" "aarch64-darwin" "x86_64-darwin" ];

      perSystem = { system, pkgs, self', lib, ... }:
        let
          nixvim' = nixvim.legacyPackages.${system};
          nvim = nixvim'.makeNixvimWithModule {
            inherit pkgs;
            module = ./config;
          };
        in {
          checks = {
            default = pkgs.nixvimLib.check.mkTestDerivationFromNvim {
              inherit nvim;
              name = "A nixvim configuration";
            };
            pre-commit-check = pre-commit-hooks.lib.${system}.run {
              src = ./.;
              hooks = {
                statix.enable = true;
                nixfmt.enable = true;
              };
            };
          };

          formatter = pkgs.nixfmt;

          packages = rec {
            default = full;
            full = nvim;
          };

          devShells = {
            default = with pkgs;
              mkShell { inherit (self'.checks.pre-commit-check) shellHook; };
          };
        };
    };
}

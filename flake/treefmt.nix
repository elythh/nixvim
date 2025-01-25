{ lib, inputs, ... }:
{
  imports = lib.optional (inputs.treefmt-nix ? flakeModule) inputs.treefmt-nix.flakeModule;

  perSystem =
    {
      lib,
      ...
    }:
    lib.optionalAttrs (inputs.treefmt-nix ? flakeModule) {
      treefmt = {
        flakeCheck = true;
        flakeFormatter = true;

        projectRootFile = "flake.nix";

        programs = {
          actionlint.enable = true;
          deadnix = {
            enable = true;
          };
          isort.enable = true;
          nixfmt.enable = true;
          statix.enable = true;
          stylua.enable = true;
        };

        settings = {
          global.excludes = [
            "*.editorconfig"
            "*.envrc"
            "*.gitconfig"
            "*.git-blame-ignore-revs"
            "*.gitignore"
            "*.gitattributes"
            "*.luacheckrc"
            "*CODEOWNERS"
            "*LICENSE"
            "*flake.lock"
            "assets/*"
          ];
        };
      };
    };
}

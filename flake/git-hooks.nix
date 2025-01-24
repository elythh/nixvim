{ lib, inputs, ... }:
{
  imports = lib.optional (inputs.git-hooks-nix ? flakeModule) inputs.git-hooks-nix.flakeModule;

  perSystem =
    {
      lib,
      ...
    }:
    lib.optionalAttrs (inputs.git-hooks-nix ? flakeModule) {
      pre-commit = {
        check.enable = true;
        settings.hooks = {
          actionlint.enable = true;
          clang-tidy.enable = true;
          deadnix = {
            enable = true;
            settings = {
              edit = true;
            };
          };
          nixfmt-rfc-style.enable = true;
          luacheck.enable = true;
          statix.enable = true;
          treefmt.enable = true;
          typos = {
            enable = true;
            excludes = [ "generated/*" ];
          };
        };
      };
    };
}

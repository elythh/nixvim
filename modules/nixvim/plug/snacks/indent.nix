{ config, lib, ... }:
let
  colors = import ../colorscheme/colors/${config.theme}.nix { };
in
{
  plugins.snacks = {
    settings = {
      indent = {
        enabled = true;
        scope = {
          enabled = true;
        };
      };
    };
  };
  highlight =
    with colors;
    (lib.mkIf (config.plugins.snacks.enable && lib.hasAttr "indent" config.plugins.snacks.settings)) {
      SnacksIndent = {
        fg = base00;
      };
    };
}

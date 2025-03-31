{ config, lib, ... }:
let
  colors = import ../colorscheme/colors/${config.theme}.nix { };
in
{
  plugins.snacks = {
    settings = {
      indent = {
        indent = {
          enabled = false;
        };
        chunk = {
          enabled = true;
          only_current = true;
          char = {
            arrow = "─";
            corner_top = "╭";
            corner_bottom = "╰";
          };
          hl = "SnacksIndentScope";
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

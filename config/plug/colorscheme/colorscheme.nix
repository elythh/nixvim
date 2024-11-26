{ config, ... }:
let
  colors = import ../../colors/${config.theme}.nix;
in
{
  colorschemes = {
    base16 = {
      enable = true;
      setUpBar = false;
      colorscheme = colors;
      settings = {
        cmp = true;
        illuminate = true;
        indentblankline = true;
        lsp_semantic = true;
        mini_completion = true;
        telescope = true;
        telescope_borders = false;
      };
    };
  };
}

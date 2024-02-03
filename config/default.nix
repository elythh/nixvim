{ inputs, self, pkgs, ... }:
{
  imports = [
    ./keys.nix
    ./sets.nix

    ./plug/utils/oil.nix
    ./plug/utils/whichkey.nix
    ./plug/colorscheme/colorscheme.nix
    ./plug/ui/telescope.nix
    ./plug/ui/lualine.nix
    ./plug/git/lazygit.nix
  ];
}

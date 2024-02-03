{ inputs, self, pkgs, ... }:
{
  imports = [
    ./keys.nix
    ./sets.nix

    ./plug/completion/cmp.nix
    ./plug/utils/oil.nix
    ./plug/utils/whichkey.nix
    ./plug/colorscheme/colorscheme.nix
    ./plug/ui/bufferline.nix
    ./plug/ui/telescope.nix
    ./plug/ui/lualine.nix
    ./plug/git/lazygit.nix
    ./plug/git/gitsigns.nix
  ];
}

{ inputs, self, pkgs, ... }:
{
  imports = [
    ./keys.nix
    ./sets.nix

    ./plug/oil.nix
    ./plug/lualine.nix
  ];
}

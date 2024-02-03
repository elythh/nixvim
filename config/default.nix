{ inputs, self, pkgs, ... }:
{
  imports = [
    ./keys.nix

    ./plug/oil.nix
    ./plug/lualine.nix
  ];
}

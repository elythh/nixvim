{ inputs, self, pkgs, ... }:
{
  # Import all your configuration modules here
  imports = [
    ./plug/oil.nix
    ./plug/lualine.nix
  ];
}

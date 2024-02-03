{ inputs, self, pkgs, ... }:
{
  # Import all your configuration modules here
  imports = [
    ./plug/lualine.nix
  ];
}

{ inputs, pkgs, ... }:
{
  plugins.snacks = {
    enable = true;
    package = pkgs.callPackage ../../../packages/snacks-nvim {
      inherit inputs;
    };
  };
  imports = [
    ./indent.nix
    ./lazygit.nix
    ./notifier.nix
    ./picker.nix
  ];

}

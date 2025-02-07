{ self, system, ... }:
{
  plugins.snacks = {
    enable = true;
    package = self.packages.${system}.snacks-nvim;
  };

  imports = [
    ./animate.nix
    ./dashboard.nix
    ./git.nix
    ./indent.nix
    ./lazygit.nix
    ./notifier.nix
    ./picker.nix
    ./rename.nix
  ];
}

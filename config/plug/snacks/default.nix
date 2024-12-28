{
  plugins.snacks = {
    enable = true;
  };

  imports = [
    ./animate.nix
    ./dashboard.nix
    ./git.nix
    ./lazygit.nix
    ./notifier.nix
    ./rename.nix
  ];
}

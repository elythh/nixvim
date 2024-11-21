{
  plugins.snacks = {
    enable = true;
  };

  imports = [
    ./dashboard.nix
    ./git.nix
    ./lazygit.nix
    ./notifier.nix
    ./rename.nix
  ];
}

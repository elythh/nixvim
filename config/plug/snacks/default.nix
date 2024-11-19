{
  plugins.snacks = {
    enable = true;
  };

  imports = [
    ./git.nix
    ./lazygit.nix
    ./notifier.nix
    ./rename.nix
  ];
}

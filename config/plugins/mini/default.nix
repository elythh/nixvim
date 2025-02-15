{
  plugins.mini = {
    enable = true;
    mockDevIcons = true;
    modules.icons = { };
  };

  imports = [
    ./ai.nix
    ./clue.nix
    ./diff.nix
    ./files.nix
  ];
}

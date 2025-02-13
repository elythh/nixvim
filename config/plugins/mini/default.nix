{
  plugins.mini = {
    enable = true;
    mockDevIcons = true;
    modules.icons = { };
  };

  imports = [
    ./clue.nix
    ./diff.nix
    ./files.nix
  ];
}

{
  plugins.mini = {
    enable = true;
    mockDevIcons = true;
  };

  imports = [
    ./ai.nix
    ./align.nix
    ./clue.nix
    ./diff.nix
    ./files.nix
    ./hipatterns.nix
    ./icons.nix
    ./indentscope.nix
    ./notify.nix
    ./surround.nix
  ];
}

{
  plugins.mini = {
    enable = true;
    mockDevIcons = true;
  };

  imports = [
    ./ai.nix
    ./align.nix
    ./clue.nix
    ./cursorword.nix
    ./diff.nix
    ./files.nix
    ./hipatterns.nix
    ./icons.nix
    ./indentscope.nix
    ./notify.nix
    ./pairs.nix
    ./surround.nix
  ];
}

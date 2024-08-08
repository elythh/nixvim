{
  plugins.mini = {
    enable = true;
    modules = {
      ai = { };
      surround = { };
      files = {
        mappings = {
          go_in_plus = "<CR>";
        };
        windows = {
          preview = true;
        };
      };
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "-";
      action = ":lua MiniFiles.open()<CR>";
      options = {
        desc = "Open parent directory";
        silent = true;
      };
    }
  ];
}

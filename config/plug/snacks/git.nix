{
  plugins.snacks = {
    settings = {
      git.enabled = true;
      gitbrowse = {
        enabled = true;
      };
    };
  };
  keymaps = [
    {
      mode = [
        "v"
        "n"
      ];
      key = "<leader>go";
      action = ":lua Snacks.gitbrowse.open()<CR>";
      options = {
        desc = "Open git repo";
      };
    }
  ];
}

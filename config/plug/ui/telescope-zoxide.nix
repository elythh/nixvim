{ pkgs, ... }:
{

  extraPlugins = with pkgs.vimPlugins; [
    telescope-zoxide
  ];

  extraConfigLua = ''
    require("telescope").load_extension("zoxide")
  '';

  keymaps = [
    {
      mode = "n";
      key = "<leader>fz";
      action = "<cmd>Telescope zoxide list<CR>";
      options = {
        desc = "LazyGit (root dir)";
      };
    }
  ];
}

{ config, lib, ... }:
{
  plugins.gitblame = {
    enable = true;
    settings = {
      date_format = "%r";
      delay = 200;
      display_virtual_text = true;
      highlight_group = "Comment";
      message_template = "<summary> • <date> • <author>";
      message_when_not_committed = "Oh please, commit this !";
      set_extmark_options = {
        priority = 7;
      };
      use_blame_commit_file_urls = false;
      virtual_text_column = 80;
    };
  };
  keymaps = lib.mkIf config.plugins.gitblame.enable [
    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>gb";
      action = "gitblame";
      options = {
        silent = true;
        desc = "+blame";
      };
    }
    {
      mode = "n";
      key = "<leader>gbt";
      action = ":GitBlameToggle<CR>";
      options = {
        silent = true;
        desc = "Toggle";
      };
    }
    {
      mode = "n";
      key = "<leader>gbs";
      action = ":GitBlameCopySHA<CR>";
      options = {
        silent = true;
        desc = "Copy SHA";
      };
    }
    {
      mode = "n";
      key = "<leader>gbc";
      action = ":GitBlameCopyFileURL<CR>";
      options = {
        silent = true;
        desc = "Copy URL";
      };
    }
    {
      mode = "n";
      key = "<leader>gbo";
      action = ":GitBlameOpenFileURL<CR>";
      options = {
        silent = true;
        desc = "Open file URL";
      };
    }
  ];
}

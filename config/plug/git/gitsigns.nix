{
  plugins.gitsigns = {
    enable = true;
    trouble = true;
    currentLineBlame = true;
    signs = {
      add = {
        text = "│";
      };
      change = {
        text = "│";
      };
      delete = {
        text = "_";
      };
      topdelete = {
        text = "‾";
      };
      changedelete = {
        text = "~";
      };
      untracked = {
        text = "│";
      };
    };
  };
  keymaps = [
    {
      mode = ["n" "v"];
      key = "<leader>gh";
      action = "gitsigns";
      options = {
        silent = true;
        desc = "+hunks";
      };
    }
    {
      mode = "n";
      key = "<leader>ghb";
      action = ":Gitsigns blame_line<CR>";
      options = {
        silent = true;
        desc = "Blame line";
      };
    }
    {
      mode = "n";
      key = "<leader>ghd";
      action = ":Gitsigns diffthis<CR>";
      options = {
        silent = true;
        desc = "Diff This";
      };
    }
    {
      mode = "n";
      key = "<leader>ghR";
      action = ":Gitsigns reset_buffer<CR>";
      options = {
        silent = true;
        desc = "Reset Buffer";
      };
    }
    {
      mode = "n";
      key = "<leader>ghS";
      action = ":Gitsigns stage_buffer<CR>";
      options = {
        silent = true;
        desc = "Stage Buffer";
      };
    }
  ];
}

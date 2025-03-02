{
  config = {
    globals.mapleader = " ";

    keymaps = [
      # Clear and replace word under cursor
      {
        mode = "n";
        key = "<C-c>";
        action = "ciw";
        options = {
          desc = "Clear and replace word under cursor";
        };
      }

      # Search and replace word under cursor
      {
        mode = "n";
        key = "<leader>R";
        action = ":%s/\<C-r><C-w>//g<Left><Left>";
        options = {
          desc = "Search and replace word under cursor";
        };
      }

      # Disable search highlighting
      {
        mode = "n";
        key = "<leader>/";
        action = "<cmd>nohl<CR>";
        options = {
          desc = "Clear search";
        };
      }

      # Move lines in visual mode
      {
        mode = "v";
        key = "J";
        action = ":m '>+1<CR>gv=gv";
        options = {
          desc = "Use move command when line is highlighted ";
        };
      }
      {
        mode = "v";
        key = "K";
        action = ":m '>-2<CR>gv=gv";
        options = {
          desc = "Use move command when line is highlighted ";
        };
      }

      # Void register paste
      {
        mode = "x";
        key = "<leader>p";
        action = ''"_dP'';
        options = {
          desc = "Deletes to void register and paste over";
        };
      }

      # Delete to void register
      {
        mode = [
          "n"
          "v"
        ];
        key = "<leader>D";
        action = ''"_d'';
        options = {
          desc = "Delete to void register";
        };
      }

      # Quickfix
      {
        mode = [
          "n"
        ];
        key = "[q";
        action = "<CMD>cnext<CR>";
        options = {
          desc = "Next quickfix item";
        };
      }
      {
        mode = [
          "n"
        ];
        key = "]q";
        action = "<CMD>cprev<CR>";
        options = {
          desc = "Previous quickfix item";
        };
      }

    ];
  };
}

{
  plugins.none-ls = {
    enable = false;
    enableLspFormat = true;
    updateInInsert = false;
    sources = {
      code_actions = {
        gitsigns.enable = true;
        statix.enable = true;
      };
      diagnostics = { statix = { enable = true; }; };
      formatting = {
        nixpkgs_fmt = { enable = true; };
        prettier = {
          enable = true;
          withArgs = ''
            {
              extra_args = { "--no-semi", "--single-quote" },
            }
          '';
        };
        stylua = { enable = true; };
        black = {
          enable = true;
          withArgs = ''
            {
              extra_args = { "--fast" },
            }
          '';
        };
      };
    };
  };
  keymaps = [{
    mode = [ "n" "v" ];
    key = "<leader>cf";
    action = "<cmd>lua vim.lsp.buf.format()<cr>";
    options = {
      silent = true;
      desc = "Format";
    };
  }];
}

{
  pkgs,
  config,
  lib,
  ...
}: let
  copilotChatRepo = {
    owner = "copilotc-nvim";
    repo = "CopilotChat.nvim";
    rev = "2771f1fa7af502ea4226a88a792f4e4319199906";
    hash = "sha256-Q+g81BQVQTY5J2c2ZWB7bjJLuNSdI0PAan+75YJ7mI0=";
  };
in {
  config = lib.mkIf (config.assistant == "copilot") {
    extraPlugins = with pkgs.vimUtils; [
      (buildVimPlugin {
        pname = "copilotchat";
        version = "2.4.0";
        src = pkgs.fetchFromGitHub copilotChatRepo;
        meta = {
          description = "Chat with GitHub Copilot in Neovim";
          homepage = "https://github.com/CopilotC-Nvim/CopilotChat.nvim/";
          license = lib.licenses.gpl3;
        };
      })
    ];
    extraConfigLua = ''
      require("CopilotChat").setup { }
    '';

    keymaps = [
      {
        mode = "x";
        key = "<leader>a";
        action = "+copilot";
      }
      {
        mode = "x";
        key = "<leader>ae";
        action = "<cmd>CopilotChatExplain<cr>";
      }
      {
        mode = "x";
        key = "<leader>af";
        action = "<cmd>CopilotChatFix<cr>";
      }
      {
        mode = "x";
        key = "<leader>ad";
        action = "<cmd>CopilotChatDocs<cr>";
      }
      {
        mode = "x";
        key = "<leader>ac";
        action = "<cmd>CopilotChatCommit<cr>";
      }
    ];
  };
}

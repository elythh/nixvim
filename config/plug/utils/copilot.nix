{ pkgs
, config
, lib
, ...
}:
let
  copilotChatRepo = {
    owner = "copilotc-nvim";
    repo = "CopilotChat.nvim";
    rev = "82923efe22b604cf9c0cad0bb2a74aa9247755ab";
    hash = "sha256-bdGql7WBn4yk44rd+6fK3CwBZNOZOlatnKjJLoyHBDY=";
  };
in
{
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

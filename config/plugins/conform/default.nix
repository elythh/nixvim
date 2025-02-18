{ pkgs, ... }:
{
  extraPackages = with pkgs; [ shfmt ];
  plugins.conform-nvim = {
    enable = true;

    lazyLoad.settings = {
      cmd = [
        "ConformInfo"
      ];
      event = [ "BufWrite" ];
    };

    settings = {
      format_on_save = {
        lspFallback = true;
        timeoutMs = 500;
      };
      notify_on_error = true;

      formatters_by_ft = {
        python = [ "black" ];
        lua = [ "stylua" ];
        nix = [ "nixfmt" ];
        markdown = [ "prettier" ];
        yaml = [ "yamlfmt" ];
        terragrunt = [
          "hcl"
        ];
        bash = [
          "shfmt"
        ];
      };
    };
  };
}

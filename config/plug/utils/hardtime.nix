{ lib, ... }:
{
  plugins.hardtime = {
    enable = lib.mkDefault false;
    settings = {
      enabled = true;
      disable_mouse = true;
      disabled_filetypes = [ "Oil" ];
      hint = true;
      max_count = 4;
      max_time = 1000;
      restriction_mode = "hint";
      restricted_keys = {
        "h" = [
          "n"
          "x"
        ];
        "j" = [
          "n"
          "x"
        ];
        "k" = [
          "n"
          "x"
        ];
        "l" = [
          "n"
          "x"
        ];
        "-" = [
          "n"
          "x"
        ];
        "+" = [
          "n"
          "x"
        ];
        "gj" = [
          "n"
          "x"
        ];
        "gk" = [
          "n"
          "x"
        ];
        "<CR>" = [
          "n"
          "x"
        ];
        "<C-M>" = [
          "n"
          "x"
        ];
        "<C-N>" = [
          "n"
          "x"
        ];
        "<C-P>" = [
          "n"
          "x"
        ];
      };

    };
  };
}

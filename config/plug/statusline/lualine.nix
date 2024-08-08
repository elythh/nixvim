{ config, ... }:
let
  colors = import ../../colors/${config.theme}.nix { };
in
{
  plugins.lualine = {
    enable = true;
    globalstatus = true;
    disabledFiletypes = {
      statusline = [
        "dashboard"
        "alpha"
        "starter"
      ];
    };
    theme = {
      normal = {
        a = {
          bg = "#nil";
        };
        b = {
          bg = "nil";
        };
        c = {
          bg = "nil";
        };
        z = {
          bg = "nil";
        };
        y = {
          bg = "nil";
        };
      };
    };
    inactiveSections = {
      lualine_x = [
        "filename"
        "filetype"
      ];
    };
    sections = {
      lualine_a = [
        {
          name = "mode";
          fmt = "string.lower";
          color = {
            fg = if config.colorschemes.base16.enable then colors.base04 else "nil";
            bg = "nil";
          };
          separator.left = "";
          separator.right = "";
        }
      ];
      lualine_b = [
        {
          name = "branch";
          icon = "";
          color = {
            fg = if config.colorschemes.base16.enable then colors.base04 else "nil";
            bg = "nil";
          };
          separator.left = "";
          separator.right = "";
        }
        {
          name = "diff";
          separator.left = "";
          separator.right = "";
        }
      ];
      lualine_c = [
        {
          name = "diagnostic";
          extraConfig = {
            symbols = {
              error = " ";
              warn = " ";
              info = " ";
              hint = "󰝶 ";
            };
          };
          color = {
            fg = if config.colorschemes.base16.enable then colors.base08 else "nil";
            bg = "nil";
          };
          separator.left = "";
          separator.right = "";
        }
      ];
      lualine_x = [ "" ];
      lualine_y = [
        {
          name = "filetype";
          extraConfig = {
            icon_only = true;
          };
          separator.left = "";
          separator.right = "";
        }
        {
          name = "filename";
          extraConfig = {
            symbols = {
              modified = "";
              readonly = "👁️";
              unnamed = "";
            };
          };
          color = {
            fg = if config.colorschemes.base16.enable then colors.base05 else "nil";
            bg = "nil";
          };
          separator.left = "";
          separator.right = "";
        }
      ];
      lualine_z = [
        {
          name = "location";
          color = {
            fg = if config.colorschemes.base16.enable then colors.base0B else "nil";
            bg = "nil";
          };
          separator.left = "";
          separator.right = "";
        }
      ];
    };
  };
}

{
  plugins.lualine = {
    enable = true;
    globalstatus = true;
    disabledFiletypes = {
      statusline = [ "dashboard" "alpha" ];
    };
    theme = {
      normal = {
        a = {
          bg = "nil";
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
        x = {
          bg = "nil";
        };
      };
    };
    componentSeparators = {
      left = " ";
      right = " ";
    };
    sections = {
      lualine_a = [
        {
          name = "mode";
          icon = "";
        }
      ];
      lualine_b = [
        {
          name = "branch";
          icon = "";
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
        }
        {
          name = "filetype";
          separator = {
            left = "";
            right = "";
          };
          extraConfig = {
            icon_only = true;
            padding = {
              left = 1;
              right = 0;
            };
          };
        }
        {
          name = "filename";
          extraConfig = {
            symbols = {
              modified = "  ";
              readonly = "";
              unnamed = "";
            };
          };
        }
      ];
      lualine_x = [
        "diff"
      ];
      lualine_y = [
        "progress"
        "location"
      ];
      lualine_z = [ ''"  " .. os.date("%X") .. " 📎"'' ];
    };
  };
}

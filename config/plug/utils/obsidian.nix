{
  plugins.obsidian = {
    enable = true;
    settings = {
      completion = {
        min_chars = 2;
        nvim_cmp = true;
      };
      new_notes_location = "current_dir";
      workspaces = [
        {
          name = "work";
          path = "~/obsidian/work";
        }
        {
          name = "home";
          path = "~/obsidian/home";
        }
      ];
      daily_notes = {
        template = "~/obsidian/templates/daily_note_template.md";
        folder = "~/obsidian/work/daily_notes";
      };
      mappings = {
        gf = {
          action = "require('obsidian').util.gf_passthrough";
          opts = {
            noremap = false;
            expr = true;
            buffer = true;
          };
        };
        "<leader>ch" = {
          action = "require('obsidian').util.toggle_checkbox";
          opts.buffer = true;
        };
      };
      templates = {
        subdir = "~/obsidian/templates";
        substitutions = {
          monday.__raw = ''
            function()
             return os.date("*t").wday == 2
            end
          '';
          tuesday.__raw = ''
            function()
             return os.date("*t").wday == 3
            end
          '';
          wednesday.__raw = ''
            function()
             return os.date("*t").wday == 4
            end
          '';
          thursday.__raw = ''
            function()
             return os.date("*t").wday == 5
            end
          '';
          friday.__raw = ''
            function()
             return os.date("*t").wday == 6
            end
          '';
        };
      };
    };
  };
}

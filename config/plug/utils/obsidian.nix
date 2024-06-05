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
        substitutions = {
          monday = ''
            function()
             return os.date("*t").2
            end
          '';
          tuesday = ''
            function()
             return os.date("*t").3
            end
          '';
          wednesday = ''
            function()
             return os.date("*t").4
            end
          '';
          thursday = ''
            function()
             return os.date("*t").5
            end
          '';
          friday = ''
            function()
             return os.date("*t").6
            end
          '';
        };
      };
    };
  };
}

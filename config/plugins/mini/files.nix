{

  plugins.mini.modules.files = {

    content = {
      filter.__raw = ''
        function(entry)
          return entry.name ~= '.git' and entry.name ~= '.direnv' and entry.name ~= '.envrc' and entry.name ~= '.gitlab' and entry.name ~= '.github'
        end'';
    };
    windows = {
      preview = true;
      width_preview = 100;
    };
    mappings = {
      synchronize = "s";
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "-";
      action = ":lua  MiniFiles.open(vim.api.nvim_buf_get_name(0))<CR>";
      options = {
        desc = "Open file explorer cwd";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "_";
      action = ":lua  MiniFiles.open()<CR>";
      options = {
        desc = "Open file explorer";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<M-c>";
      action.__raw = ''
        function()
          local curr_entry = MiniFiles.get_fs_entry()
          if curr_entry then
            -- Convert path to be relative to home directory
            local home_dir = vim.fn.expand("~")
            local relative_path = curr_entry.path:gsub("^" .. home_dir, "~")
            vim.fn.setreg("+", relative_path) -- Copy the relative path to the clipboard register
            vim.notify(relative_path, vim.log.levels.INFO)
            vim.notify("Path copied to clipboard: ", vim.log.levels.INFO)
          else
            vim.notify("No file or directory selected", vim.log.levels.WARN)
          end
        end
      '';
    }
    {
      mode = "n";
      key = "<M-C>";
      action.__raw = ''
        function()
              -- Get the current entry (file or directory)
           local curr_entry = MiniFiles.get_fs_entry()
           if curr_entry then
             local path = curr_entry.path
             -- Escape the path for shell command
             local escaped_path = vim.fn.fnameescape(path)
             -- Build the osascript command to copy the file or directory to the clipboard
             local cmd = string.format([[cat %s | wl-copy ]], escaped_path)
             local result = vim.fn.system(cmd)
             if vim.v.shell_error ~= 0 then
               vim.notify("Copy failed: " .. result, vim.log.levels.ERROR)
             else
               vim.notify(path, vim.log.levels.INFO)
               vim.notify("Copied to system clipboard", vim.log.levels.INFO)
             end
           else
             vim.notify("No file or directory selected", vim.log.levels.WARN)
           end
        end
      '';
    }
  ];
}

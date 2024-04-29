{pkgs, ...}: {
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      pname = "track.nvim";
      version = "1.0";
      src = pkgs.fetchFromGitHub {
        owner = "dharmx";
        repo = "track.nvim";
        rev = "8b56c003ea9677e4056f2108570f610f74b18a26";
        hash = "sha256-XVyGxnCu9eEDFKg6Aq9ZBh0Cqdaci24RXD1ChjsKElw=";
      };
    })
  ];

  keymaps = [
    # Track
    {
      mode = "n";
      key = "<leader>t";
      action = "+track";
    }
    {
      mode = "n";
      key = "<leader><space>";
      action = "<CMD>Track<CR>";
      options = {
        silent = true;
        desc = "Open Track";
      };
    }
    {
      mode = "n";
      key = "<leader>aa";
      action = "<CMD>Mark<CR>";
      options = {
        silent = true;
        desc = "Mark";
      };
    }
    {
      mode = "n";
      key = "<leader>dd";
      action = "<CMD>Unmark<CR>";
      options = {
        silent = true;
        desc = "Unmark";
      };
    }
    {
      mode = "n";
      key = "<leader>ee";
      action = "<CMD>Track bundles<CR>";
      options = {
        silent = true;
        desc = "Open Track Bundles";
      };
    }
  ];
}

{ self, system, ... }:
{

  plugins.avante = {
    enable = false;
    package = self.packages.${system}.avante-nvim;

    lazyLoad.settings.event = [ "BufEnter" ];
    settings = {
      mappings = {
        files = {
          add_current = "<leader>a.";
        };
      };
      claude = {
        endpoint = "https://api.anthropic.com";
        max_tokens = 4096;
        model = "claude-3-5-sonnet-latest";
        temperature = 0;
      };
      diff = {
        autojump = true;
        debug = false;
        list_opener = "copen";
      };
      highlights = {
        diff = {
          current = "DiffText";
          incoming = "DiffAdd";
        };
      };
      hints = {
        enabled = true;
      };
      mappings = {
        diff = {
          both = "cb";
          next = "]x";
          none = "c0";
          ours = "co";
          prev = "[x";
          theirs = "tc";
        };
      };
      provider = "claude";
      windows = {
        sidebar_header = {
          align = "center";
          rounded = true;
        };
        width = 30;
        wrap = true;
      };
    };
  };
  plugins.render-markdown = {
    enable = true;
    settings = {
      file_types = [
        "Avante"
      ];
    };
  };
}

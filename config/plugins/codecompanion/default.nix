{
  plugins.codecompanion = {
    enable = true;
    settings = {
      strategies = {
        agent = {
          adapter = "anthropic";
        };
        chat = {
          adapter = "anthropic";
        };
        inline = {
          adapter = "anthropic";
        };
      };
    };
  };
  plugins.render-markdown = {
    enable = true;
    lazyLoad.settings = {
      ft = [ "codecompanion" ];
    };
    settings = {
      file_types = [
        "codecompanion"
      ];
    };
  };
}

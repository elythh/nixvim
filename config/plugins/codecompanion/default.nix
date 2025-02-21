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
}

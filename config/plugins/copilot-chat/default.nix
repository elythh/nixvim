{
  plugins.copilot-chat = {
    enable = true;
  };
  plugins.render-markdown = {
    enable = true;
    lazyLoad.settings = {
      ft = [
        "copilot-chat"
      ];
    };
    settings = {
      file_types = [
        "copilot-chat"
      ];
    };
  };
}

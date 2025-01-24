{
  plugins.noice = {
    enable = true;
    lazyLoad.settings.event = "DeferredUIEnter";
    settings = {
      notify = {
        enabled = false;
        view = "notify";
      };
      messages = {
        enabled = true;
        view = "mini";
      };
      lsp = {
        message = {
          enabled = false;
        };
        progress = {
          enabled = false;
          view = "mini";
        };
      };
      popupmenu = {
        enabled = true;
        backend = "nui";
      };
    };
  };
}

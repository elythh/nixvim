{
  plugins.noice = {
    enable = true;
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
    cmdline = {
      format = {
        filter = {
          pattern = [
            ":%s*%%s*s:%s*"
            ":%s*%%s*s!%s*"
            ":%s*%%s*s/%s*"
            "%s*s:%s*"
            ":%s*s!%s*"
            ":%s*s/%s*"
          ];
          icon = "";
          lang = "regex";
        };
        replace = {
          pattern = [
            ":%s*%%s*s:%w*:%s*"
            ":%s*%%s*s!%w*!%s*"
            ":%s*%%s*s/%w*/%s*"
            "%s*s:%w*:%s*"
            ":%s*s!%w*!%s*"
            ":%s*s/%w*/%s*"
          ];
          icon = "󱞪";
          lang = "regex";
        };
        range = {
          pattern = [
            ":%s*%%s*s:%w*:%w*:%s*"
            ":%s*%%s*s!%w*!%w*!%s*"
            ":%s*%%s*s/%w*/%w*/%s*"
            "%s*s:%w*:%w*:%s*"
            ":%s*s!%w*!%w*!%s*"
            ":%s*s/%w*/%w*/%s*"
          ];
          icon = "";
          lang = "regex";
        };
      };
    };
  };
}

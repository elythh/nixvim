{
  plugins.mini = {
    enable = true;
    modules = {
      ai = { };
      icons = { };
      notify = { };
      pairs = { };
      surround = { };
      tabline = { };
      trailspace = { };
      indentscope = {
        symbol = "";
        # draw = {
        #   delay = 100;
        #   priority = 2;
        #   animation.__raw = ''
        #     function(s, n)
        #       return s/n*20
        #     end'';
        # };
      };
      diff = {
        view = {
          signs = {
            add = "│";
            change = "│";
            delete = "-";
          };
        };
      };
    };
  };
}

{pkgs, ...}: {
  plugins.dap = {
    enable = true;
    adapters = {};
    signs = {
      dapBreakpoint = {
        text = "●";
        texthl = "DapBreakpoint";
      };
      dapBreakpointCondition = {
        text = "●";
        texthl = "DapBreakpointCondition";
      };
      dapLogPoint = {
        text = "◆";
        texthl = "DapLogPoint";
      };
    };
    extensions = {
      dap-go = {
        enable = true;
        delve.path = "${pkgs.delve}/bin/dlv";
      };
      dap-ui = {
        enable = true;
      };
      dap-virtual-text = {
        enable = true;
      };
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>du";
      action = "<cmd>lua require('dapui').toggle()<CR>";
      options = {
        silent = true;
        desc = "Toggle dapui";
      };
    }
    {
      mode = "n";
      key = "<leader>tb";
      action = "<cmd>lua require'dap'.toggle_breakpoint()<CR>";
      options.silent = true;
    }
  ];
}

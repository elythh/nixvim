{pkgs, ...}: {
  extraPlugins = with pkgs.vimPlugins; [
    neoscroll-nvim
  ];

  extraConfigLua = ''
    require('neoscroll').setup {}
  '';
}

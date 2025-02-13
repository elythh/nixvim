{ pkgs, ... }:
{
  extraPackages = with pkgs; [ fd ];
  plugins.snacks = {
    settings = {
      notifier = {
        enabled = true;
        style = "minimal";
        timeout = 3000;
      };
    };
  };
}

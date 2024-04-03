{
  plugins.gitlinker = {
    enable = true;
    callbacks = {
      "github.com" = "get_github_type_url";
      "gitlab.dnm.radiofrance.fr" = "get_github_type_url";
    };
  };
}

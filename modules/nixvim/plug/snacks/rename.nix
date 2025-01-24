{
  plugins.snacks = {
    settings = {
      rename.enabled = true;
    };
  };
  autoCmd = [
    {
      event = "User";
      pattern = "MiniFilesActionRename";
      callback.__raw = ''
        function(event)
          Snacks.rename.on_rename_file(event.data.from, event.data.to)
        end
      '';
    }
  ];
}

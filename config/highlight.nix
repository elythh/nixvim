{ config, lib, ... }:
let
  colors = import ../config/colors/${config.theme}.nix { };
in
{
  config = lib.mkIf config.colorschemes.base16.enable {
    highlight = with colors; {

      # Mini tabline
      MiniTablineCurrent = {
        bg = "none";
        fg = base05;
      };
      MiniTablineVisible = {
        bg = "none";
        fg = base03;
      };
      MiniTablineHidden = {
        bg = "none";
        fg = base03;
      };
      MiniTablineModifiedCurrent = {
        bg = "none";
        fg = base0A;
      };
      MiniTablineModifiedVisible = {
        bg = "none";
        fg = base0B;
      };
      MiniTablineModifiedHidden = {
        bg = "none";
        fg = base0B;
      };
      # Mini Notify
      MiniNotifyNormal = {
        bg = base00;
      };
      MiniNotifyBorder = {
        bg = base00;
        fg = base00;
      };

      CursorLine = {
        fg = "none";
        bg = "none";
      };
      CursorLineNr = {
        fg = "none";
        bg = "none";
      };

      StatusNormal = {
        bg = "none";
        fg = "none";
      };

      # Telescope
      TelescopePromptBorder = {
        fg = base01;
        bg = base01;
      };
      TelescopePromptNormal = {
        fg = "none";
        bg = base01;
      };
      TelescopePromptPrefix = {
        fg = base08;
        bg = base01;
      };

      TelescopeSelection = {
        fg = "none";
        bg = base01;
      };

      # Popup menu
      Pmenu = {
        fg = "none";
        bg = base01;
      };
      PmenuSbar = {
        fg = "none";
        bg = base01;
      };
      PmenuThumb = {
        fg = "none";
        bg = base01;
      };
      PmenuSel = {
        fg = "none";
        bg = base02;
      };

      # Completion
      CmpItemAbbrMatch = {
        fg = base05;
        bg = "none";
      };
      CmpItemAbbrMatchFuzzy = {
        fg = base05;
        bg = "none";
      };
      CmpItemAbbr = {
        fg = base03;
        bg = "none";
      };
      CmpItemKind = {
        fg = base0E;
        bg = "none";
      };
      CmpItemMenu = {
        fg = base0E;
        bg = "none";
      };
      CmpItemKindSnippet = {
        fg = base0E;
        bg = "none";
      };

      VertSplit = {
        fg = base01;
        bg = "none";
      };

      LineNr = {
        fg = base03;
        bg = "none";
      };

      # Noice
      NoiceCmdlinePopup = {
        fg = base04;
        bg = base01;
      };
      NoiceCmdlinePopupBorder = {
        fg = base01;
        bg = base01;
      };
      NoiceCmdlinePopupBorderSearch = {
        fg = base01;
        bg = base01;
      };

      # Treesitter
      TSAttribute = {
        fg = base0D;
      };
      TSBoolean = {
        fg = base0D;
      };
      TSCharacter = {
        fg = base0D;
      };
      TSComment = {
        fg = base02;
        italic = true;
      };
      TSConditional = {
        fg = base08;
      };
      TSConstant = {
        fg = base0D;
      };
      TSConstBuiltin = {
        fg = base0D;
      };
      TSConstMacro = {
        fg = base0A;
      };
      TSConstructor = {
        fg = base0D;
      };
      TSException = {
        fg = base03;
      };
      TSField = {
        fg = base08;
      };
      TSFloat = {
        fg = base03;
      };
      TSFunction = {
        fg = base08;
      };
      TSFuncBuiltin = {
        fg = base0C;
      };
      TSFuncMacro = {
        fg = base0B;
      };
      TSInclude = {
        fg = base08;
      };
      TSKeyword = {
        fg = base0E;
      };
      TSKeywordFunction = {
        fg = base0D;
      };
      TsKeywordOperator = {
        fg = base0D;
      };
      TSKeywordReturn = {
        fg = base0D;
      };
      TSLabel = {
        fg = base0D;
      };
      TSMethod = {
        fg = base0D;
      };
      TSNamespace = {
        fg = base08;
      };
      TSNumber = {
        fg = base0A;
      };
      TSParameter = {
        fg = base08;
      };
      TSParameterReference = {
        fg = base08;
      };
      TSProperty = {
        fg = base08;
      };
      TSPunctDelimiter = {
        fg = base05;
      };
      TSPunctBracket = {
        fg = base05;
      };
      TSPunctSpecial = {
        fg = base05;
      };
      TSRepeat = {
        fg = base0A;
      };
      TSString = {
        fg = base0B;
      };
      TSStringRegex = {
        fg = base0B;
      };
      TSStringEscape = {
        fg = base0D;
      };
      TSStringSpecial = {
        fg = base0D;
      };
      TSSymbol = {
        fg = base08;
      };
      TSTag = {
        fg = base0D;
      };
      TSTagAttribute = {
        fg = base08;
      };
      TSTagDelimiter = {
        fg = base05;
      };
      TSText = {
        fg = base05;
      };
      TSStrong = {
        fg = base05;
      };
      TSEmphasis = {
        italic = true;
        fg = base05;
      };
      TSUnderline = {
        fg = base0E;
      };
      TSStrike = {
        fg = base05;
      };
      TSTitle = {
        fg = base0A;
      };
      TSLiteral = {
        fg = base0B;
      };
      TSURI = {
        fg = base0A;
      };
      TSMath = {
        fg = base0D;
      };
      TSTextReference = {
        fg = base0D;
      };
      TSEnvirontment = {
        fg = base0E;
      };
      TSEnvironmentName = {
        fg = base0A;
      };
      TSNote = {
        fg = base03;
      };
      TSWarning = {
        fg = base00;
        bg = base08;
      };
      TSDanger = {
        fg = base03;
      };
      TSType = {
        fg = base0A;
      };
      TSTypeBuiltin = {
        fg = base0A;
      };
      TSVariable = {
        fg = base05;
      };
      TSVariableBuiltin = {
        fg = base0D;
      };
    };
  };
}

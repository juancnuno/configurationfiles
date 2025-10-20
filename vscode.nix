{
  programs.vscode = {
    enable = true;

    profiles.default.userSettings = {
      "editor.cursorBlinking" = "solid";

      "editor.rulers" = [
        100
      ];

      "files.trimTrailingWhitespace" = true;
      "window.menuStyle" = "custom";
      "window.titleBarStyle" = "native";
      "workbench.editor.enablePreview" = false;
    };
  };
}

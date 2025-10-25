{
  programs.vscode = {
    enable = true;

    profiles.default.userSettings = {
      "chat.disableAIFeatures" = true;
      "editor.cursorBlinking" = "solid";

      "editor.rulers" = [
        100
      ];

      "files.trimTrailingWhitespace" = true;
      "jdk.telemetry.enabled" = true;
      "window.menuStyle" = "custom";
      "window.titleBarStyle" = "native";
      "workbench.editor.enablePreview" = false;
    };
  };
}

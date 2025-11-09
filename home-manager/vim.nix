{ config, ... }:
let
  enUtf8 = "${config.xdg.configHome}/vim/spell/en.utf-8.add";
in
{
  home.file."${enUtf8}".text = '''';

  programs.vim = {
    enable = true;
    defaultEditor = true;
    extraConfig = "sil mksp! ${enUtf8}";
  };
}

{
  home.file."/home/juancnuno/.config/vim/spell/en.utf-8.add".text = '''';

  programs.vim = {
    enable = true;
    defaultEditor = true;

    extraConfig = ''
      set spf=/home/juancnuno/.config/vim/spell/en.utf-8.add
      sil mksp! /home/juancnuno/.config/vim/spell/en.utf-8.add
    '';
  };
}

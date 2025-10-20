{
  programs.bash = {
    enable = true;
    initExtra = "HISTTIMEFORMAT='%c '";
    shellAliases.ls = "ls --color=auto -l";
  };
}

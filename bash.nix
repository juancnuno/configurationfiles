{
  programs.bash.enable = true;
  programs.bash.initExtra = "HISTTIMEFORMAT='%c '";

  programs.bash.shellAliases = {
    ls = "ls --color=auto -l";
  };
}

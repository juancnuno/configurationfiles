{
  programs.git.enable = true;

  programs.git.settings = {
    credential = {
      "https://gist.github.com/" = {
        helper = [
          ""
          "!/run/current-system/sw/bin/gh auth git-credential"
        ];
      };

      "https://github.com/" = {
        helper = [
          ""
          "!/run/current-system/sw/bin/gh auth git-credential"
        ];
      };
    };

    diff = {
      tool = "meld";
    };

    difftool = {
      prompt = false;
    };

    init = {
      defaultBranch = "main";
    };

    user = {
      email = "juancnuno@gmail.com";
      name = "Juan C Nuno";
    };
  };
}

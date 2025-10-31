{ ... }:

{
  imports = [
    ./bash.nix
    ./git.nix
    ./userDirs.nix
    ./vim.nix
    ./vscode.nix
  ];

  home = {
    homeDirectory = "/home/juancnuno";

    packages = [
    ];

    stateVersion = "25.05";
    username = "juancnuno";
  };

  programs.home-manager.enable = true;
}

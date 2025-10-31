{ config, pkgs, ... }:

{
  imports = [
    ./bash.nix
    ./git.nix
    ./userDirs.nix
    ./vim.nix
    ./vscode.nix
  ];

  home.file = {
  };

  home.homeDirectory = "/home/juancnuno";

  home.packages = [
  ];

  home.stateVersion = "25.05";
  home.username = "juancnuno";

  programs.home-manager.enable = true;
}

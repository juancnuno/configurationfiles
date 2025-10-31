{ config, pkgs, ... }:

{
  imports = [
    ./bash.nix
    ./git.nix
    ./userDirs.nix
    ./vim.nix
    ./vscode.nix
  ];

  home.username = "juancnuno";
  home.homeDirectory = "/home/juancnuno";
  home.stateVersion = "25.05";

  home.packages = [
  ];

  home.file = {
  };

  programs.home-manager.enable = true;
}

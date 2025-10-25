{ config, ... }:

{
  xdg.userDirs = {
    enable = true;

    desktop = "${config.home.homeDirectory}";
    documents = "${config.home.homeDirectory}";
    download = "${config.home.homeDirectory}";
    music = "${config.home.homeDirectory}";
  };
}

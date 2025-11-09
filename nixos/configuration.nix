{ pkgs, ... }:

{
  imports = [
    <nixos-hardware/framework/13-inch/12th-gen-intel>
    ./hardware-configuration.nix
  ];

  boot = {
    initrd.luks.devices."luks-86629040-9218-488a-bec6-dffb2dd88f45".device =
      "/dev/disk/by-uuid/86629040-9218-488a-bec6-dffb2dd88f45";

    kernelPackages = pkgs.linuxPackages_latest;

    loader = {
      efi.canTouchEfiVariables = true;
      systemd-boot.enable = true;
    };
  };

  environment.systemPackages = with pkgs; [
    dconf-editor
    exiftool
    gnome-boxes
    google-chrome
    hunspellDicts.en_US
    maven
    meld
    nixfmt
  ];

  fonts.packages = with pkgs; [
    noto-fonts-cjk-sans
  ];

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  networking = {
    hostName = "usscerritos";
    networkmanager.enable = true;
  };

  nixpkgs.config.allowUnfree = true;

  programs = {
    gnupg.agent.enable = true;

    java = {
      enable = true;
      package = pkgs.jdk25;
    };
  };

  security.rtkit.enable = true;

  services = {
    desktopManager.gnome.enable = true;
    displayManager.gdm.enable = true;
    pipewire.enable = true;
    xserver.enable = true;
  };

  system.stateVersion = "25.05";

  users.users.juancnuno = {
    description = "Juan C Nuno";

    extraGroups = [
      "networkmanager"
      "wheel"
    ];

    isNormalUser = true;
  };
}

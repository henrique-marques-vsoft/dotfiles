# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, callPackage, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Link derivations to run on /libexec
  environment.pathsToLink = [ "/libexec" ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # Enable bluetooth
  hardware.bluetooth.settings = {
    General = {
      Enable = "Source,Sink,Media,Socket";
    };
  };
  hardware.bluetooth.enable = true; # enables support for Bluetooth
  hardware.bluetooth.powerOnBoot = true; # powers up the default Bluetooth controller on boot
  services.blueman.enable = true;

  # Set your time zone.
  time.timeZone = "Europe/Lisbon";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_GB.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "pt_PT.UTF-8";
    LC_IDENTIFICATION = "pt_PT.UTF-8";
    LC_MEASUREMENT = "pt_PT.UTF-8";
    LC_MONETARY = "pt_PT.UTF-8";
    LC_NAME = "pt_PT.UTF-8";
    LC_NUMERIC = "pt_PT.UTF-8";
    LC_PAPER = "pt_PT.UTF-8";
    LC_TELEPHONE = "pt_PT.UTF-8";
    LC_TIME = "pt_PT.UTF-8";
  };

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  #services.xserver.desktopManager.gnome.enable = true;

  # Configure keymap in X11
  services.xserver = {
    xkb.layout = "us, br";
    xkb.variant = "";
    xkb.options = "grp:alt_shift_toggle";
  };

  # Configure console keymap
  console.keyMap = "uk";

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound with pipewire.
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.computer = {
    isNormalUser = true;
    description = "computer";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    #  thunderbird
    ];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List services that you want to enable:
  services.gvfs.enable = true;
  services.udisks2.enable = true;
  programs.dconf.enable = true;
  programs.firefox.enable = true;
  #programs.catppuccin.enable = true;
  #services.catppuccin.enable = true;


  # EXWM setup
  services.displayManager. defaultSession = "none+exwm";
  services.xserver = {
    enable = true;
    desktopManager = {
      xterm.enable = false;
    };
   
   windowManager.exwm = {
     enable = true;
   };
  };

  # i3wm setup
#  services.displayManager. defaultSession = "none+i3";
#  services.xserver = {
#    enable = true;
#    desktopManager = {
#      xterm.enable = false;
#    };
#   
#   windowManager.i3 = {
#     enable = true;
#     extraPackages = with pkgs; [
#       dmenu
#       i3status
#       i3lock
#       i3blocks
#    ];
#   };
#  };

  # List packages installed in system profile
  environment.systemPackages = with pkgs; [
    # Dev
    vim
    neovim
    git
    kitty
    docker-compose
    emacs
    go
    glibc
    meson
    ninja
    hugo
    fzf
    ripgrep
    rustc
    rust-analyzer
    cargo
    gcc
    jdk
    clojure
    leiningen
    clang
    eslint_d
    nodejs_20
    nodePackages.volar
    nodePackages.eslint
    nodePackages.typescript-language-server
    node2nix
    typescript
    tree-sitter
    insomnia
    zellij

    # Utilities
    pulseaudio
    wget
    unzip
    coreutils
    fd
    psensor
    gnumake
    libtool
    bash
    cmake
    flameshot
    lm_sensors
    ytfzf
    ani-cli
    yt-dlp
    figlet
    cowsay
    pulsemixer

    # Misc
    transmission-gtk
    mpv
    vlc
    gparted
    librewolf
    btop
    bitwarden
    darktable
    gimp
    blueman
    yazi
    xfce.thunar
    xfce.thunar-archive-plugin
    xfce.thunar-volman
    thunderbird
    rhythmbox
    nicotine-plus
    slskd
    pidgin
    whatsapp-for-linux

    # Games
    taisei
    (retroarch.override{
	cores = with libretro; [
		genesis-plus-gx
		snes9x
		beetle-psx-hw
		pcsx2
        ];
    })

    # WM/DE/Rice
    feh
    polybarFull
    arandr
    nitrogen
    rofi
    gsettings-desktop-schemas
    polkit_gnome
    lxappearance
    gruvbox-dark-gtk
    gnome.gnome-tweaks
    neofetch
    xdg-desktop-portal-gtk
    nerdfonts
    picom
    dmenu
    i3status
    i3lock
    i3blocks

    # Fonts
    iosevka
    iosevka-comfy.comfy

    # Other
    usbutils
    udiskie
    udisks
  ];

  # Fonts
  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    liberation_ttf
    fira-code
    fira-code-symbols
    mplus-outline-fonts.githubRelease
    dina-font
    proggyfonts
    iosevka-comfy.comfy
  ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.05"; # Did you read the comment?

}
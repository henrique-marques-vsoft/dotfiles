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
    #enable = true;
    #powerOnBoot = true;
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
  #services.xserver.displayManager.gdm.enable = true;
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
    iosevka
    iosevka-comfy.comfy
  ];

  # Enable sound with pipewire.
  hardware.pulseaudio = {
    enable = false;
    package = pkgs.pulseaudioFull;
  };
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

  # Install firefox.
  programs.firefox.enable = true;
  
  # Install DConf
  programs.dconf.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Set i3wm
  services.xserver = {
    enable = true;

    desktopManager = {
      xterm.enable = false;
    };
   
   #windowManager.fvwm2.enable = true;
   #windowManager.windowmaker.enable = true;

   windowManager.i3 = {
     enable = true;
     extraPackages = with pkgs; [
       dmenu
       i3status
       i3lock
       i3blocks
    ];
   };
  };

services.displayManager. defaultSession = "none+i3";
#services.displayManager. defaultSession = "none+fvwm2";
#services.displayManager.defaultSession = "none+windowmaker";

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    # Dev
    vim
    git
    lazygit
    kitty
    gedit
    #dbeaver
    docker-compose
    emacs
    go
    glibc
    meson
    ninja
    irssi
    hugo
    fzf
    ripgrep
    nodejs_20
    rustc
    rust-analyzer
    cargo
    gcc
    zig
    clang
    eslint_d
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
    fish
    cmake
    flameshot
    lm_sensors
    ytfzf
    ani-cli
    pidgin

    # Misc
    yt-dlp
    figlet
    yazi
    transmission-gtk
    mpv
    gparted
    ungoogled-chromium
    librewolf
    btop
    bitwarden
    darktable
    gimp
    blueman
    xfce.thunar
    xfce.thunar-archive-plugin
    xfce.thunar-volman
    thunderbird
    qutebrowser
    rhythmbox
    puddletag
    soulseekqt
    nicotine-plus
    slskd
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
    catppuccin
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
    picom
    #windowmaker
    #fvwm

    # Fonts
    iosevka
    iosevka-comfy.comfy

    # Other
    usbutils
    udiskie
    udisks
  ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:
  services.gvfs.enable = true;
  services.udisks2.enable = true;


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

{pkgs, ...}:{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages =
    [ 
    pkgs.vim
      pkgs.neovim
      pkgs.bat
      pkgs.btop
      pkgs.blueutil
      pkgs.fzf
      pkgs.ripgrep
      pkgs.p7zip
      pkgs.mpv
      pkgs.fd
      pkgs.fastfetch
      pkgs.starship
      pkgs.stow
      pkgs.tldr
      pkgs.thefuck
      pkgs.tree
      pkgs.tmux
      pkgs.llvm
      pkgs.lazygit
      pkgs.difftastic
      pkgs.luarocks
      pkgs.virtualenv
      pkgs.wget
      pkgs.pipx
      pkgs.python311
      pkgs.python311Packages.argcomplete
      pkgs.cargo pkgs.rustc
      ];
  homebrew = {
    enable = true;
    onActivation.cleanup = "uninstall";
    taps = [];
    casks =[
      "aerial"
        "android-platform-tools"
        "anki"
        "appcleaner"
        "bambu-studio"
        "battery"
        "blender"
        "brave-browser"
        "calibre"
        "cyberduck"
        "discord"
        "disk-inventory-x"
        "docker"
        "enjoyable"
        "eqmac"
        "espanso"
        "firefox"
        "freecad"
        "ghostty"
        "gimp"
        "gog-galaxy"
        "google-chrome"
        "hammerspoon"
        "handbrake"
        "iina"
        "iterm2"
        "jetbrains-toolbox"
        "karabiner-elements"
        "keepassxc"
        "keka"
        "keymapp"
        "macfuse"
        "obs"
        "logseq"
        "obsidian"
        "openmtp"
        "openscad"
        "pinta"
        "plex"
        "postman"
        "rectangle"
        "spotify"
        "stats"
        "syncthing"
        "thunderbird"
        "upscayl"
        "visual-studio-code"
        "vlc"
        "wezterm"
        "whatsapp"
        "mullvadvpn"
        "jdownloader"
        "qbittorrent"
        "veracrypt"
        ];
    masApps = {
      amphetamine = 937984704;
    };
  };
}

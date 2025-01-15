{pkgs, ...}:{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages =
    [ 
      pkgs.bat
      pkgs.blueutil
      pkgs.btop
      pkgs.cargo 
      pkgs.difftastic
      pkgs.fastfetch
      pkgs.fd
      pkgs.fzf
      pkgs.lazygit
      pkgs.llvm
      pkgs.luarocks
      pkgs.mpv
      pkgs.neovim
      pkgs.p7zip
      pkgs.pipx
      pkgs.python311
      pkgs.python311Packages.argcomplete
      pkgs.ripgrep
      pkgs.rustc
      pkgs.starship
      pkgs.stow
      pkgs.texliveFull
      pkgs.thefuck
      pkgs.tldr
      pkgs.tmux
      pkgs.tree
      pkgs.vim
      pkgs.virtualenv
      pkgs.wget
      ];
  homebrew = {
    enable = true;
    onActivation = {
      cleanup = "uninstall";
      autoUpdate = true;
      upgrade = true; 
    };
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
        "jdownloader"
        "jetbrains-toolbox"
        "karabiner-elements"
        "keepassxc"
        "keka"
        "keymapp"
        "logseq"
        "macfuse"
        "mullvadvpn"
        "obs"
        "obsidian"
        "openmtp"
        "openscad"
        "pinta"
        "plex"
        "postman"
        "qbittorrent"
        "rectangle"
        "spotify"
        "stats"
        "syncthing"
        "thunderbird"
        "upscayl"
        "veracrypt"
        "visual-studio-code"
        "vlc"
        "whatsapp"
        ];
    masApps = {
      amphetamine = 937984704;
    };
  };
}

{pkgs, ...}:{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages =
    [ 
      pkgs.bat
      pkgs.blueutil
      pkgs.btop
      pkgs.bun
      pkgs.cargo 
      pkgs.difftastic
      pkgs.direnv
      pkgs.fastfetch
      pkgs.fd
      pkgs.ffmpeg
      pkgs.fzf
      pkgs.jujutsu
      pkgs.lazygit
      pkgs.llvm
      pkgs.luarocks
      pkgs.mpv
      pkgs.neovim
      pkgs.nodejs_22
      pkgs.nushell
      pkgs.p7zip
      pkgs.pdfgrep
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
      pkgs.uv
      pkgs.vim
      pkgs.virtualenv
      pkgs.wget
      pkgs.yarn
      pkgs.yt-dlp
      pkgs.zig
      pkgs.zoxide
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
        "docker-desktop"
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
        "handbrake-app"
        "iina"
        "jdownloader"
        "jetbrains-toolbox"
        "karabiner-elements"
        "keepassxc"
        "keka"
        "keymapp"
        "logseq"
        "macfuse"
        "mullvad-vpn"
        "obs"
        "obsidian"
        "ollama-app"
        "openmtp"
        "openscad"
        "pinta"
        "plex"
        "postman"
        "qbittorrent"
        "rectangle"
        "sioyek"
        "spotify"
        "stats"
        "syncthing-app"
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

{ pkgs, ... }: {
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
      pkgs.rustup
      pkgs.nodejs_23
      ];
  homebrew = {
    enable = true;
    onActivation = {
      cleanup = "uninstall";
      autoUpdate = true;
      upgrade = true; 
    };
    taps = ["aws/tap" "homebrew/bundle" "nikitabobko/tap"];
    casks =[
      "aerospace"
        "cyberduck"
        "gimp"
        "keepassxc"
        "rectangle"
        "android-platform-tools"
        "dbeaver-community"
        "google-chrome"
        "keka"
        "session-manager-plugin"
        "anki"
        "docker"
        "keymapp"
        "spotify"
        "appcleaner"
        "dotnet-sdk"
        "hammerspoon"
        "logseq"
        "stats"
        "audacity"
        "eqmac"
        "handbrake"
        "mockoon"
        "visual-studio-code"
        "betterdisplay"
        "espanso"
        "iina"
        "obs"
        "obs-backgroundremoval"
        "wezterm"
        "brave-browser"
        "firefox"
        "whatsapp"
        "jetbrains-toolbox"
        "plex"
        "corretto@11"
        "ghostty"
        "karabiner-elements"
        "postman"
        ];
    masApps = {
      amphetamine = 937984704;
    };
  };
}

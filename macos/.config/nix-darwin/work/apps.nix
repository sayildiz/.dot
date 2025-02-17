{ pkgs, ... }: {
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages =
    [ 
      pkgs.awscli2
      pkgs.bat
      pkgs.blueutil
      pkgs.btop
      pkgs.cargo
      pkgs.difftastic
      pkgs.fastfetch
      pkgs.fd
      pkgs.fzf
      pkgs.git-remote-codecommit
      pkgs.k6
      pkgs.lazygit
      pkgs.llvm
      pkgs.luarocks
      pkgs.mpv
      pkgs.neovim
      pkgs.nodejs_23
      pkgs.p7zip
      pkgs.pipx
      pkgs.postgresql_16
      pkgs.python311
      pkgs.python311Packages.argcomplete
      pkgs.ripgrep
      pkgs.rustc
      pkgs.starship
      pkgs.stow
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
    taps = ["aws/tap" "homebrew/bundle" "nikitabobko/tap"];
    casks =[
        "aerospace"
        "android-platform-tools"
        "anki"
        "appcleaner"
        "audacity"
        "betterdisplay"
        "brave-browser"
        "corretto@11"
        "cyberduck"
        "dbeaver-community"
        "docker"
        "dotnet-sdk"
        "eqmac"
        "espanso"
        "firefox"
        "ghostty"
        "gimp"
        "google-chrome"
        "hammerspoon"
        "handbrake"
        "iina"
        "insomnia"
        "jetbrains-toolbox"
        "karabiner-elements"
        "keepassxc"
        "keka"
        "keymapp"
        "logseq"
        "mockoon"
        "obs"
        "obs-backgroundremoval"
        "plex"
        "postman"
        "rectangle"
        "session-manager-plugin"
        "spotify"
        "stats"
        "visual-studio-code"
        "whatsapp"
        ];
    masApps = {
      amphetamine = 937984704;
    };
  };
  programs.zsh =  {
    enable = true;
    enableFzfCompletion = true;
    enableSyntaxHighlighting = true;
    enableCompletion = true;
    enableBashCompletion = true;
  };
}

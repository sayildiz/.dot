{
  description = "Example nix-darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:LnL7/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs }:
  let
    configuration = { pkgs, ... }: {
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
            ];
        masApps = {
          amphetamine = 937984704;
        };
      };

      system.defaults = {
        NSGlobalDomain.AppleInterfaceStyle = "Dark";
        NSGlobalDomain.KeyRepeat = 2;
        NSGlobalDomain."com.apple.swipescrolldirection" = false;
        dock.autohide = true;
        finder.AppleShowAllFiles = true;
        finder.AppleShowAllExtensions = true;
        finder.FXPreferredViewStyle = "clmv";
        finder._FXShowPosixPathInTitle = true;
      };

      # Necessary for using flakes on this system.
      nix.settings.experimental-features = "nix-command flakes";

      # Enable alternative shell support in nix-darwin.
      # programs.fish.enable = true;

      # Set Git commit hash for darwin-version.
      system.configurationRevision = self.rev or self.dirtyRev or null;

      # Used for backwards compatibility, please read the changelog before changing.
      # $ darwin-rebuild changelog
      system.stateVersion = 5;

      # The platform the configuration will be used on.
      nixpkgs.hostPlatform = "aarch64-darwin";
    };
  in
  {
    # Build darwin flake using:
    # $ darwin-rebuild build --flake .#simple
    darwinConfigurations."simple" = nix-darwin.lib.darwinSystem {
      modules = [ configuration ];
    };
  };
}

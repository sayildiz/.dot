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

      system.defaults = {
        dock.autohide = true;
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

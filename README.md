# .dot

## How to run
- install nix
- install nix-darwin
- install brew
- copy nix-darwin to .config/
- run `darwin-rebuild switch --flake ~/.config/nix-darwin#<profile>`
  - replace <profile> with *personal* or *work*

## symlink with stow (until i find better solution)
- install stow
- `stow macos`
- if symlink is used run this
  - `darwin-rebuild switch --flake "$(readlink -f ~/.config/nix-darwin)#<profile>"`

## TODO
- [] use home-manager
- [] manage other device with NixOS


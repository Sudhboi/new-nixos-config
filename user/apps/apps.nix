{ config, pkgs, ... }:

{
  imports = [
    ./alacritty/alacritty.nix
    ./kitty/kitty.nix
    ./zen-browser/zen-browser.nix
  ];
}

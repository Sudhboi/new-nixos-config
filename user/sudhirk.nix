{ config, pkgs, ... }:

{
  imports = [
    ./shell/sh.nix
    ./kitty/kitty.nix
    ./git/git.nix
  ];
}

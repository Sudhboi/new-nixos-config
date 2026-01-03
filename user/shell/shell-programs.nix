{ config, pkgs, ... }:

{
  imports = [
    ./shell/sh.nix
    ./git/git.nix
    ./zoxide/zoxide.nix
    ./yazi/yazi.nix
    ./starship/starship.nix
  ];
}

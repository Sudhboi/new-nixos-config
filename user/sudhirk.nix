{ config, pkgs, ... }:

{
  imports = [
    ./shell/shell-programs.nix
    ./apps/apps.nix
    ];
}

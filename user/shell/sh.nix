{ config, pkgs, ... }:

{

  programs.zsh = {
    enable = true;
    shellAliases = {
      ll = "ls -la";
      ".." = "cd ..";
      nrs = "sudo nixos-rebuild switch --flake ~/.dotfiles";
      hms = "home-manager switch --flake ~/.dotfiles";
    };
    initContent = ''
eval "$(zoxide init zsh)"
    '';
  };

}

{ config, pkgs, ... }:

{

  programs.zsh = {
    enable = true;
    shellAliases = {
      ll = "ls -la";
      ".." = "cd ..";
      nrs = "sudo nixos-rebuild switch --flake ~/.dotfiles";
      hms = "home-manager switch --flake ~/.dotfiles";
      q = "exit";
    };
    initContent = ''

functions y() {
  if [ "$1" != "" ]; then
    if [ -d "$1" ]; then
      yy "$1"
    else
      yy "$(zoxide query $1)"
    fi
  else
    yy
  fi
    return $?
}

eval "$(zoxide init zsh)"

    '';
  };

}

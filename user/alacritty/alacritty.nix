{ config, pkgs, ... }:

{
  programs.alacritty = {
    enable = true;
    settings = {
      font.normal.family = "JetBrainsMono Nerd Font";
      window.padding = {
	x = 10;
	y = 10;
      };
    };
  };
}

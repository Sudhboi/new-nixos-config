{ config, pkgs, ... }:

{
  programs.alacritty = {
    enable = true;
    settings = {
      font.normal.family = "JetBrainsMono Nerd Font";
      window = {
        padding = {
	  x = 10;
	  y = 10;
	};
	opacity = 0.8;
      };
      cursor.style = {
        shape = "Beam";
	blinking = "On";
      };
    };
  };
}

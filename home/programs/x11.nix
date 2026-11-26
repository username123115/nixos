{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    flameshot
    xclip
    xrandr
	libX11
	arandr
  ];
}

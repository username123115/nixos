{ config, pkgs, ... }: {
  home.packages = with pkgs; [
	# TODO: won't build
    # osu-lazer
	prismlauncher
	dwarf-fortress
	renoise
	tetrio-desktop
	dolphin-emu
  ];
  programs.retroarch = {
	enable = true;
	cores = {
	  mgba.enable = true;
	  swanstation.enable = true;
	  pcsx2.enable = true;
	};
  };

}

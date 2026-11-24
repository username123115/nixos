{ codex-desktop-linux, config, pkgs, ... }: {
  imports = [
    codex-desktop-linux.homeManagerModules.default
  ];

  programs.codexDesktopLinux.enable = true;

  home.packages = with pkgs; [
	obs-studio
	# TODO: cve in dependency
	# kicad
	# kicadAddons.kikit
	# kikit
    blender
	wireshark
	arduino-ide

	/* (dyalog.override {
	  acceptLicense = true;
	})
	ride */
  ];
  programs.firefox.enable = true;
}

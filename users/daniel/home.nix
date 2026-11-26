{ pkgs, username, ... }: {

  imports = [
    ../../home/core.nix
    ../../home/dotfiles.nix

	../../home/programs/android.nix
    ../../home/programs/ctf.nix
    ../../home/programs/celeste.nix
    ../../home/programs/common.nix
    ../../home/programs/commonGui.nix
    ../../home/programs/development.nix
    ../../home/programs/developmentGui.nix
    ../../home/programs/entertainment.nix
	../../home/programs/ocr.nix
    ../../home/programs/telegram.nix
	../../home/programs/wayland.nix
	../../home/programs/x11.nix
  ];

  programs.git.settings = {
    user.name = "Daniel Jin";
    user.email = "mrpickles123115@gmail.com";
  };
}

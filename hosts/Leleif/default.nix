{ config, lib, pkgs, inputs, ... }:

{
  imports = [
      ../../modules/audio.nix
      ../../modules/fonts.nix
      ../../modules/system.nix
      ../../modules/extraHosts.nix

	  ../../modules/extra/virtualisation.nix
	  ../../modules/extra/tailscale-server.nix
	  ../../modules/extra/podman.nix
      ../../modules/extra/ssh.nix
	  ./extra-users.nix
	  ./firewall.nix
      ./hardware-configuration.nix


	  ../../modules/desktop.nix
	  ../../modules/fonts.nix
	  ../../modules/av_intel.nix
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "Leleif"; # Define your hostname.
  networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.

  time.timeZone = "America/Fort_Wayne";
  system.stateVersion = "24.11";

}


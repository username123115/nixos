{ config, lib, pkgs, modulesPath, ... }:
{
  services.caddy = { 
	enable = true;
    virtualHosts."leleif.tailddec14.ts.net".extraConfig = ''
      bind 100.75.101.13
      reverse_proxy 127.0.0.1:8080
    '';
  };
  networking.firewall.allowedTCPPorts = [ 80 443 ];
}

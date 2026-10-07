{ ... } : {
  services.tailscale.enable = true;
  services.tailscale.useRoutingFeatures = "server";
  services.tailscale.permitCertUid = "caddy";
}

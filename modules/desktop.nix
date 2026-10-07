# Setup a desktop / windowing environment
{ pkgs, lib, username, ... } : {

  i18n.inputMethod = {
    enable = true;
    type = "fcitx5";
    fcitx5.addons = with pkgs; [
      qt6Packages.fcitx5-chinese-addons
      fcitx5-gtk
    ];
  };

  services.xserver = {
    enable = true;
    windowManager.awesome = {
      enable = true;
      luaModules = with pkgs.luaPackages; [
        luarocks
        luadbi-mysql
	      awesome-wm-widgets
      ];
    };
  };

  services.picom = {
    enable = true;
    backend = "glx";
    vSync = true;
  };

  services.greenclip.enable = true;

  services.displayManager = {
    sddm.enable = true;
    defaultSession = "none+awesome";
  };


  programs = {
    hyprland = {
      enable = true;
      xwayland.enable = true;
    };

	niri.enable = true;

  };

  environment.systemPackages = with pkgs; [
    xwayland-satellite
  ];


}

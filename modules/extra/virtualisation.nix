{ pkgs, ... } : {
  virtualisation.libvirtd = {
	enable = true;
	qemu = {
		vhostUserPackages = with pkgs; [ virtiofsd ];
		swtpm.enable = true;
	};
  };
}

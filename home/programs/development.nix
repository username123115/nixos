{ config, pkgs, ... }: {
  home.packages = with pkgs; [
	asm-lsp
    lua-language-server
	python3
    pyright
	rustup
	emmet-ls
    ccls
    typescript-language-server
	vscode-langservers-extracted
    jdt-language-server
    gcc
	virt-manager

	nushell
	opencode

    # Formatters
    stylua
    black
    isort
    prettierd

	nodejs_22

	distrobox

	wireguard-tools
  ];
  programs.direnv = {
    enable = true;
    enableBashIntegration = true;
    nix-direnv.enable = true;
  };

}

{ pkgs, ... }: {
	imports = [
		./modules/bundle.nix
		./zsh.nix
	];

	home = {
		username = "pokens";
		homeDirectory = "/home/pokens";
		stateVersion = "24.05";
		
		packages = with pkgs; [
			bun
			fnm
			deno
			foliate
		];
	};
}

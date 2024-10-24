{
	imports = [
		./opts.nix
		./plugins/bundle.nix
	];

	programs.nixvim = {
		enable = true;
		defaultEditor = true;
		colorschemes.nightfox.enable = true;
	};
}

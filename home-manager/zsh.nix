{ config, ... } : {
	programs.zsh = {
		enable = true;
		enableCompletion = true;
		autosuggestion.enable = true;
		initExtra = "unsetopt beep";	

		shellAliases = 
			let
				flakeDir = "~/nix";
			in {
				rb = "doas nixos-rebuild switch --flake ${flakeDir}";
				upd = "nix flake update --flake ${flakeDir}";
				upg = "doas nixos-rebuild switch --upgrade --flake ${flakeDir}";
				grb = "doas nix-collect-garbage -d";

				hms = "home-manager switch --flake ${flakeDir}";

				conf = "doas nvim ${flakeDir}/nixos/configuration.nix";
				pkgs = "doas nvim ${flakeDir}/nixos/packages.nix";
			};

		oh-my-zsh = {
			enable = true;
			theme = "lambda";
		};
	};

	programs.thefuck = {
		enable = true;
	};
}

{
	imports = [
		./hardware-configuration.nix
		./packages.nix
		./modules/bundle.nix
	];

	 nix.settings = {
		experimental-features = [ "nix-command" "flakes" ];
		auto-optimise-store = true;
		warn-dirty = false;
	};

	networking.hostName = "nixos"; # Define your hostname

	time.timeZone = "Europe/Chisinau"; # Set your time zone

	i18n.defaultLocale = "en_US.UTF-8";  # Select internationalisation properties

	# Enable touchpad support (enabled default in most desktopManager)
	services.libinput.enable = true;

	system.stateVersion = "24.05"; # Do not change
}


{
	boot.loader = {
		efi = {
			canTouchEfiVariables = true;
			efiSysMountPoint = "/boot/efi";
		};
		grub = {
			enable = true;
			devices = ["nodev"];
			efiSupport = true;
			useOSProber = true;
			configurationLimit = 4;
		};
	};
}

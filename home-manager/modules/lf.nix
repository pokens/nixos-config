{ pkgs, ... } : {
	xdg.configFile."lf/icons".source = ./icons;

	programs.lf = {
		enable = true;

		commands = {
			mkdir = ''
			''${{
				printf "Directory Name: "
				read DIR
				mkdir $DIR
			}}
			'';
			mkfile = ''
			''${{
				printf "File name: "
				read ans
			  $EDITOR $ans
			}}
			'';
			edit = ''$$EDITOR $f'';
		};

		keybindings = {
			m = "";
			e = "edit";
			"." = "set hidden!";
			md = "mkdir";
			mf = "mkfile";
			hm = "cd ~/nix/home-manager";
			nixos = "cd ~/nix/nixos";
			nixvim = "cd ~/nix/home-manager/modules/nixvim";
		};

		settings = {
			preview = true;
			hidden = true;
			drawbox = true;
			icons = true;
			ignorecase = true;
		};
	
		extraConfig =
		let
			previewer = 
				pkgs.writeShellScriptBin "pv.sh" ''
				file=$1
				w=$2
				h=$3
				x=$4
				y=$5

				if [[ "$( ${pkgs.file}/bin/file -Lb --mime-type "$file")" =~ ^image ]]; then
					${pkgs.kitty}/bin/kitty +kitten icat --silent --stdin no --transfer-mode file --place "''${w}x''${h}@''${x}x''${y}" "$file" < /dev/null > /dev/tty
					exit 1
				fi

				${pkgs.pistol}/bin/pistol "$file"
				'';
				cleaner = pkgs.writeShellScriptBin "clean.sh" ''
					${pkgs.kitty}/bin/kitty +kitten icat --clear --stdin no --silent --transfer-mode file < /dev/null > /dev/tty
				'';
		in
		''
			set cleaner ${cleaner}/bin/clean.sh
			set previewer ${previewer}/bin/pv.sh
		'';
	};
}

{ config , ...}:
{
	imports = [
		./programs/systempackages.nix
	];
	
	nixpkgs.config.permittedInsecurePackages = [
    		"imagemagick-6.9.12-68"
    		"openssl-1.1.1t"
    		"openssl-1.1.1u"
    		"openssl-1.1.1w"
  	];
}

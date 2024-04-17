{
  description =
    "A flake giving access to fonts that I use, outside of nixpkgs.";

  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let 
        pkgs = nixpkgs.legacyPackages.${system};
        installInstructions = ''
          mkdir -p $out/share/fonts/freetype
          cp $src/*/*.ttf $out/share/fonts/freetype
        '';
      in {
        defaultPackage = pkgs.symlinkJoin {
          name = "hacen-fonts-0.0.2";
          paths = builtins.attrValues
            self.packages.${system}; # Add font derivation names here
        };

        packages.sahara = pkgs.stdenvNoCC.mkDerivation {
          name = "sahara-font";
          dontConfigue = true;
          src = pkgs.fetchzip {
            url =
              "https://hacen.net/IMG/zip/hacen_sahara.zip";
            sha256 = "sha256-gsHaUi03YUS2uQUuMSa24QY/ICDAi6Ok6NiAu4oUstY=";
            stripRoot = false;
          };
          installPhase = installInstructions;
          meta = { description = "A HacenSahara Font Family derivation."; };
        };
        
        packages.maghreb = pkgs.stdenvNoCC.mkDerivation {
          name = "maghreb-font";
          dontConfigue = true;
          src = pkgs.fetchzip {
            url =
              "https://www.hacen.net/IMG/zip/Hacen_Maghreb.zip";
            sha256 = "sha256-KRc4TIUh6laUk6NAnifYY+QRSGeBcnUd3lEUyKvBQtE=";
            stripRoot = false;
          };
          installPhase = installInstructions;
          meta = { description = "A HacenMaghreb Font Family derivation."; };
        };
        
        packages.algeria = pkgs.stdenvNoCC.mkDerivation {
          name = "algeria-font";
          dontConfigue = true;
          src = pkgs.fetchzip {
            url =
              "https://www.hacen.net/IMG/zip/Hacen_Algeria.zip";
            sha256 = "sha256-sdMKOr9/lZtghsBjg77nNOCj6Zg5bOiZZzP1cYRLM2U=";
            stripRoot = false;
          };
          installPhase = installInstructions;
          meta = { description = "A HacenAlgeria Font Family derivation."; };
        };

        packages.eltaroute = pkgs.stdenvNoCC.mkDerivation {
          name = "eltaroute-font";
          dontConfigue = true;
          src = pkgs.fetchzip {
            url =
              "https://www.hacen.net/IMG/zip/Hacen_Eltaroute.zip";
            sha256 = "sha256-jKIKTI116OPlHC4A8G/3uv8bk+wbVGeUWjuGek9T3nk=";
            stripRoot = false;
          };
          installPhase = installInstructions;
          meta = { description = "A HacenEltaroute Font Family derivation."; };
        };
      });
}

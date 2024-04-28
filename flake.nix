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
        packages.default = pkgs.symlinkJoin {
          name = "hacen-fonts-0.0.1";
          paths = with self.packages.${system}; [
            sahara
            maghreb
            algeria
            eltaroute
            jordan
            saudia-arabia
            extender
            trarza
            tehran
            vanilla
            sudan
            tunisia
            pixer
            samra
            qatar
            digital-arabia
            freehand
            capspice
            newspaper
            egypt
            dalal
            promoter
            sahafa
            lebanon
            liner
            beirut
            casablanca
            typographer
          ];
          meta = { description = "A Hacen Fonts Family derivation."; };
        };

        packages.sahara = pkgs.stdenvNoCC.mkDerivation {
          name = "sahara-font";
          src = pkgs.fetchzip {
            url =
              "https://hacen.net/IMG/zip/hacen_sahara.zip";
            sha256 = "sha256-gsHaUi03YUS2uQUuMSa24QY/ICDAi6Ok6NiAu4oUstY=";
          };
          installPhase = installInstructions;
        };
        
        packages.maghreb = pkgs.stdenvNoCC.mkDerivation {
          name = "maghreb-font";
          src = pkgs.fetchzip {
            url =
              "https://www.hacen.net/IMG/zip/Hacen_Maghreb.zip";
            sha256 = "sha256-KRc4TIUh6laUk6NAnifYY+QRSGeBcnUd3lEUyKvBQtE=";
          };
          installPhase = installInstructions;
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
        };

        packages.eltaroute = pkgs.stdenvNoCC.mkDerivation {
          name = "eltaroute-font";
          src = pkgs.fetchzip {
            url =
              "https://www.hacen.net/IMG/zip/Hacen_Eltaroute.zip";
            sha256 = "sha256-jKIKTI116OPlHC4A8G/3uv8bk+wbVGeUWjuGek9T3nk=";
          };
          installPhase = installInstructions;
        };

        packages.jordan = pkgs.stdenvNoCC.mkDerivation {
          name = "jordan-font";
          src = pkgs.fetchzip {
            url =
              "https://www.hacen.net/IMG/zip/Hacen_Jordan.zip";
            sha256 = "sha256-M4wLJxxBFE7fupYzmPQgnvwRp0NnH9S/IHDm2Q3NnVs=";
          };
          installPhase = installInstructions;
        };

        packages.saudia-arabia = pkgs.stdenvNoCC.mkDerivation {
          name = "saudia-arabia-font";
          src = pkgs.fetchzip {
            url =
              "https://www.hacen.net/IMG/zip/Hacen_Saudi_Arabia.zip";
            sha256 = "sha256-+siDPrDi6CzjwtrLdqTOBraNkMz7G/mvj8eHZiH62iQ=";
          };
          installPhase = installInstructions;
        };

        packages.extender = pkgs.stdenvNoCC.mkDerivation {
          name = "extender-font";
          src = pkgs.fetchzip {
            url =
              "https://www.hacen.net/IMG/zip/Hacen_Extender.zip";
            sha256 = "sha256-tW5QUEP/4VS1FcC2ap49aTtXE6mDWK/KiTfZsVESW9A=";
          };
          installPhase = installInstructions;
        };

        packages.trarza = pkgs.stdenvNoCC.mkDerivation {
            name = "trarza-font";

            src = pkgs.fetchzip {
                url = "https://www.hacen.net/IMG/zip/Hacen_Trarza.zip";
                sha256 = "sha256-7f0Trz6lxdUxcVo3XlicYoR9DVVZ9TznUhM/P+vXPHk=";
            };
            installPhase = installInstructions;
        };

        packages.tehran = pkgs.stdenvNoCC.mkDerivation {
            name = "tehran-font";
            src = pkgs.fetchzip {
                url = "https://www.hacen.net/IMG/zip/Hacen_Tehran.zip";
                sha256 = "sha256-kTjb4p9LChg9aHXsbCf/Dig++8ZvyKLD3lc7uSaSOR0=";
            };
            installPhase = installInstructions;
        };

        packages.vanilla = pkgs.stdenvNoCC.mkDerivation {
            name = "vanilla-font";
            src = pkgs.fetchzip {
                url = "https://www.hacen.net/IMG/zip/Hacen_Vanilla.zip";
                sha256 = "sha256-POwGT60rg7CulSEEp+tzCkL1blyix9Gg4Nh2MlsrvJI=";
            };
            installPhase = installInstructions;
        };

        packages.sudan = pkgs.stdenvNoCC.mkDerivation {
            name = "sudan-font";
            src = pkgs.fetchzip {
                url = "https://www.hacen.net/IMG/zip/Hacen_Sudan.zip";
                sha256 = "sha256-q8UnN3mypVGWug7wjFs8cbbUoQTTbboycsAMSKjFonc=";
            };
            installPhase = installInstructions;
        };

        packages.tunisia = pkgs.stdenvNoCC.mkDerivation {
            name = "tunisia-font";
            src = pkgs.fetchzip {
                url = "https://www.hacen.net/IMG/zip/Hacen_Tunisia.zip";
                sha256 = "sha256-Asv3HlzIQm/epnWnbFBzggzT8VvQSLcEdcOrjvoQbk0=";
            };
            installPhase = installInstructions;
        };

        packages.pixer = pkgs.stdenvNoCC.mkDerivation {
            name = "pixer-font";
            src = pkgs.fetchzip {
                url = "https://www.hacen.net/IMG/zip/Hacen_Pixer.zip";
                sha256 = "sha256-ZZrCNsuAxIPAJVUeeAP51Jklx6RmWuJao0ofAQ0nBHA=";
            };
            installPhase = installInstructions;
        };

        packages.samra = pkgs.stdenvNoCC.mkDerivation {
            name = "samra-font";
            src = pkgs.fetchzip {
                url = "https://www.hacen.net/IMG/zip/Hacen_Samra.zip";
                sha256 = "sha256-MqCZf98GzjX7f42ewFnucsQPP0P5HwU5yvxepbi7biA=";
            };
            installPhase = installInstructions;
        };

        packages.qatar = pkgs.stdenvNoCC.mkDerivation {
            name = "qatar-font";
            src = pkgs.fetchzip {
                url = "https://www.hacen.net/IMG/zip/Hacen_Qatar.zip";
                sha256 = "sha256-VIu4yLI1Ki0bPKhbEzW75dY8dOFURczWiExmW1neCLA=";
            };
            installPhase = installInstructions;
        };

        packages.digital-arabia = pkgs.stdenvNoCC.mkDerivation {
            name = "digital-arabia-font";
            src = pkgs.fetchzip {
                url = "https://www.hacen.net/IMG/zip/Hacen_Digital_Arabia.zip";
                sha256 = "sha256-uXyH9DwKmRP7zWAZZkVyNpfLU4PeVF9LhPmsey5Z2z0=";
            };
            installPhase = installInstructions;
        };

        packages.freehand = pkgs.stdenvNoCC.mkDerivation {
            name = "freehand-font";

            src = pkgs.fetchzip {
                url = "https://www.hacen.net/IMG/zip/Hacen_Freehand.zip";
                sha256 = "sha256-w+mvCi7Rzp89kmf0bN2yhcW0/aAQ5Jsi0C/Wlhxwus0=";
            };
            installPhase = installInstructions;
        };

        packages.capspice = pkgs.stdenvNoCC.mkDerivation {
            name = "capspice-font";
            src = pkgs.fetchzip {
                url = "https://www.hacen.net/IMG/zip/Hacen_CAPSpice.zip";
                sha256 = "sha256-VB/sddlmh06UGyclXRa6onYo52klWTGnc4WgOM+3AMU=";
            };
            installPhase = installInstructions;
        };

        packages.newspaper = pkgs.stdenvNoCC.mkDerivation {
            name = "newspaper-font";
            src = pkgs.fetchzip {
                url = "https://www.hacen.net/IMG/zip/Hacen_Newspaper.zip";
                sha256 = "sha256-uj1+Xr293+1y070JezDjzcifDDtZo8znlDGEiW4xtUE=";
            };
            installPhase = installInstructions;
        };

        packages.egypt = pkgs.stdenvNoCC.mkDerivation {
            name = "egypt-font";
            src = pkgs.fetchzip {
                url = "https://www.hacen.net/IMG/zip/Hacen_Egypt.zip";
                sha256 = "sha256-yPGtICEypZtdzY3RSNJNg4wVUY+3J/j3xgsi8jV5p9k=";
            };
            installPhase = installInstructions;
        };

        packages.dalal = pkgs.stdenvNoCC.mkDerivation {
            name = "dalal-font";
            src = pkgs.fetchzip {
                url = "https://www.hacen.net/IMG/zip/Hacen_Dalal.zip";
                sha256 = "sha256-eufo9L8rBik3rNTEpWv2E/KRUVnLEI+KdoGGzr55pJw=";
            };
            installPhase = installInstructions;
        };

        packages.promoter = pkgs.stdenvNoCC.mkDerivation {
            name = "promoter-font";
            src = pkgs.fetchzip {
                url = "https://www.hacen.net/IMG/zip/Hacen_Promoter.zip";
                sha256 = "sha256-3ycIzGCf2AR+MV6c16UqirjWQTZbtCYqS48xjpNHeCc=";
            };
            installPhase = installInstructions;
        };

        packages.sahafa = pkgs.stdenvNoCC.mkDerivation {
            name = "sahafa-font";
            src = pkgs.fetchzip {
                url = "https://www.hacen.net/IMG/zip/Hacen_Sahafa.zip";
                sha256 = "sha256-9pSF8ORUzyKN8qxrxLmQFxRkiuWB7ZfcdlnMQc6F1wM=";
            };
            installPhase = installInstructions;
        };

        packages.lebanon = pkgs.stdenvNoCC.mkDerivation {
            name = "lebanon-font";
            src = pkgs.fetchzip {
                url = "https://www.hacen.net/IMG/zip/Hacen_Lebanon.zip";
                sha256 = "sha256-QVo7ZntqNThyY/fWQwS78ZWc5Tu5yEpZnNFdx+ge1Ps=";
            };
            installPhase = installInstructions;
        };

        packages.liner = pkgs.stdenvNoCC.mkDerivation {
            name = "liner-font";
            src = pkgs.fetchzip {
                url = "https://www.hacen.net/IMG/zip/Hacen_Liner.zip";
                sha256 = "sha256-xxKYkDfKejfoBJH14woKgpoEbaFqqzLTvEenUaTCA5k=";
            };
            installPhase = installInstructions;
        };

        packages.beirut = pkgs.stdenvNoCC.mkDerivation {
            name = "beirut-font";
            src = pkgs.fetchzip {
                url = "https://www.hacen.net/IMG/zip/Hacen_Beirut.zip";
                sha256 = "sha256-zgbkIXNXuBGEG6HTwH/aoyUHZl4c4iGkEuSlZZEmUlA=";
            };
            installPhase = installInstructions;
        };

        packages.casablanca = pkgs.stdenvNoCC.mkDerivation {
            name = "casablanca-font";
            src = pkgs.fetchzip {
                url = "https://www.hacen.net/IMG/zip/Hacen_Casablanca.zip";
                sha256 = "sha256-VCoGuYwIyLk4gVNONJGR+K6FXzkqPuYdOfiX1HAWTRE=";
            };
            installPhase = installInstructions;
        };

        packages.typographer = pkgs.stdenvNoCC.mkDerivation {
            name = "typographer-font";
            src = pkgs.fetchzip {
                url = "https://www.hacen.net/IMG/zip/Hacen_Typographer.zip";
                sha256 = "sha256-yT27zzXmBjWPKWMUe83GJEWuH0bOL7VYn/fgkBIZ49g=";
            };
            installPhase = installInstructions;
        };
      });
}

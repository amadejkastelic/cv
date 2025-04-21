{
  description = "Amadej Kastelic's Resume";

  outputs = {
    self,
    nixpkgs,
    ...
  } @ inputs:
    inputs.flake-parts.lib.mkFlake {inherit inputs;} {
      systems = ["aarch64-linux" "aarch64-darwin" "x86_64-linux" "x86_64-darwin"];

      perSystem = {
        pkgs,
        config,
        ...
      }: let
        mkDate = longDate:
          with builtins; (concatStringsSep "-" [
            (substring 0 4 longDate)
            (substring 4 2 longDate)
            (substring 6 2 longDate)
          ]);
        version = mkDate (self.lastModifiedDate or "19700101");
        src = self;
      in {
        devShells.default = pkgs.mkShell {
          name = "Resume";

          packages = [
            # Typst
            (pkgs.typst.withPackages (ps: [
              ps.modern-cv
              ps.fontawesome
            ]))
            pkgs.typstyle
            pkgs.tinymist
          ];

          shellHook = ''
            export TYPST_FONT_PATHS="fonts"
            mkdir -p fonts
            ln -sf ${pkgs.font-awesome}/share/fonts/opentype/* fonts/
            ln -sf ${pkgs.roboto}/share/fonts/truetype/* fonts/
            ln -sf ${pkgs.source-sans}/share/fonts/truetype/* fonts/
            ln -sf ${pkgs.source-sans-pro}/share/fonts/truetype/* fonts/
          '';
        };

        packages = {
          english = pkgs.callPackage ./package.nix {
            inherit version src;
            typstPackages = [
              pkgs.typstPackages.modern-cv
              pkgs.typstPackages.fontawesome
            ];
          };
          slovenian = config.packages.english.override {lang = "sl";};
          default = config.packages.english;
        };
      };
    };

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };
  };
}

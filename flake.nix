{
  description = "Amadej Kastelic's Resume";

  outputs =
    {
      self,
      pre-commit-hooks,
      ...
    }@inputs:
    inputs.flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "aarch64-linux"
        "aarch64-darwin"
        "x86_64-linux"
        "x86_64-darwin"
      ];

      perSystem =
        {
          pkgs,
          config,
          system,
          ...
        }:
        let
          mkDate =
            longDate:
            with builtins;
            (concatStringsSep "-" [
              (substring 0 4 longDate)
              (substring 4 2 longDate)
              (substring 6 2 longDate)
            ]);
          version = mkDate (self.lastModifiedDate or "19700101");
          src = self;
        in
        {
          devShells.default = pkgs.callPackage ./nix/shell.nix {
            inherit pkgs;
            preCommitCheck = config.checks.pre-commit-check;
          };

          packages = {
            english = pkgs.callPackage ./nix/package.nix {
              inherit version src;
              typstPackages = [
                pkgs.typstPackages.modern-cv
                pkgs.typstPackages.fontawesome
              ];
            };
            english-svg = config.packages.english.override { type = "svg"; };

            slovenian = config.packages.english.override { lang = "sl"; };
            slovenian-svg = config.packages.english.override {
              lang = "sl";
              type = "svg";
            };

            default = config.packages.english;
            svg = config.packages.english-svg;
            pdf = config.packages.english;
          };

          checks.pre-commit-check = import ./nix/pre-commit.nix {
            preCommitHooks = pre-commit-hooks.lib.${system};
          };
        };
    };

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    flake-parts.url = "github:hercules-ci/flake-parts";

    pre-commit-hooks = {
      url = "github:cachix/pre-commit-hooks.nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
}

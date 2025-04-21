{
  lib,
  stdenv,
  typst,
  typstPackages ? [],
  font-awesome,
  roboto,
  source-sans,
  source-sans-pro,
  version ? "",
  src ? null,
  lang ? "",
}: let
  l = lib.optionalString (lang != "") "_${lang}";
  typistWithPkgs = typst.withPackages (ps: typstPackages);
in
  stdenv.mkDerivation {
    pname = "akastelic_cv${l}";
    inherit src version;

    nativeBuildInputs = [typistWithPkgs];

    configurePhase = ''
      runHook preConfigure

      runHook postConfigure
    '';

    postConfigure = ''
      mkdir fonts
      ln -s ${font-awesome}/share/fonts/opentype/* fonts/
      ln -s ${roboto}/share/fonts/truetype/* fonts/
      ln -s ${source-sans}/share/fonts/truetype/* fonts/
      ln -s ${source-sans-pro}/share/fonts/truetype/* fonts/
    '';

    TYPST_FONT_PATHS = "fonts";

    buildPhase = ''
      runHook preBuild

      typst compile resume.typ

      runHook postBuild
    '';

    installPhase = ''
      runHook preInstall

      mkdir -p $out
      mv *.pdf $out
      mv $out/resume.pdf $out/CV${l}_AmadejKastelic.pdf

      runHook postInstall
    '';
  }

{
  mkShell,
  pkgs,
  preCommitCheck,
}:
mkShell {
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
    ${preCommitCheck.shellHook}
    export TYPST_FONT_PATHS="fonts"
    mkdir -p fonts
    ln -sf ${pkgs.font-awesome}/share/fonts/opentype/* fonts/
    ln -sf ${pkgs.roboto}/share/fonts/truetype/* fonts/
    ln -sf ${pkgs.source-sans}/share/fonts/truetype/* fonts/
    ln -sf ${pkgs.source-sans-pro}/share/fonts/truetype/* fonts/
  '';
}

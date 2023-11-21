{ lib, stdenv }:

stdenv.mkDerivation {
  name = "wez-pain-control";

  src = ./.;

  dontBuild = true;

  installPhase = ''
    cp -r plugin $out;
  '';
}

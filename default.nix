with import <nixpkgs> {};

stdenv.mkDerivation rec {
  name = "ibm3270font-0.1.0";
  src  = ./ibm3270font-0.1.0.tar.gz;
  buildInputs = [sudo];
  installPhase = ''
    mkdir -p $out/share/fonts/truetype/
    cp ./3270* $out/share/fonts/truetype/
  '';
}

# icat.nix
{
  stdenv,
  fetchFromGitHub,
  pkg-config,
  imlib2,
  libx11
}:

stdenv.mkDerivation {
  pname = "icat";
  version = "v0.5";

  src = fetchFromGitHub {
    owner = "atextor";
    repo = "icat";
    rev = "826325a1daaba3a7c7c20609f046112f7cc8e37b";
    sha256 = "1vv6w8nqmjbladmimmiyq98szw2ihdi46b0bzlwjwj5rgbcps7qq";
  };

  buildInputs = [ pkg-config imlib2 libx11 ];

  #-- No tiene make install. La fase instalacion la implementamos
  #-- a pelo, copiando el ejecutable en el directorio de salida
  installPhase = ''
    mkdir -p $out/bin
    cp icat $out/bin
  '';

}

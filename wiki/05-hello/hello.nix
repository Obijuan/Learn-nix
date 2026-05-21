# Paquete para construir el ejecutable hello de gnu

#-- Funcion a la que se le pasa un objeto con dos atributos
#-- stdenv y fetchzip. La llamada a esta funcion la realiza
#-- pkgs.callPackage
{
  stdenv,
  fetchzip,
}:

#-- Construir el paquete hello
stdenv.mkDerivation {
  pname = "hello";
  version = "2.12.1";

  #-- Las fuentes se bajan de la url indicada
  #-- Se incluye el hash para verificar que es el paquete correcto
  src = fetchzip {
    url = "https://ftp.gnu.org/gnu/hello/hello-2.12.1.tar.gz";
    sha256 = "sha256-1kJjhtlsAkpNB7f6tZEs+dbKd8z7KoNHyDHEJ0tmhnc=";
  };
}


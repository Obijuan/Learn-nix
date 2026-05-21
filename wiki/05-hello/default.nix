#-- Fichero que se evalua al ejecutar nix-build
let
  pkgs = import <nixpkgs> {};
in
#-- Devuelve un objeto con el atributo hello
#-- Este atributo se usa para construir el paquete hello
#-- Las instrucciones de construccion estan en el fichero hello.nix
{
  hello = pkgs.callPackage ./hello.nix { };
}

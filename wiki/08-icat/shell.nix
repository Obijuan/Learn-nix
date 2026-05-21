let
    pkgs = import <nixpkgs> {};

    #-- Construir el icat
    icat = pkgs.callPackage ./icat.nix { };
in
    #-- Abrir una shell
    pkgs.mkShellNoCC {

        #-- Paquetes a utilizar dentro de la shell
        packages = [ icat ];

        #-- Comandos a ejecutar al arrancar la shell
        shellHook = ''
           echo "Probando..."
           icat sample.png
        '';
    }


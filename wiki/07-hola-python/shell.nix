let
    pkgs = import <nixpkgs> {};

    #-- Construir el paquete hello
    hola = pkgs.callPackage ./hola.nix { };
in
    #-- Abrir una shell
    pkgs.mkShellNoCC {

        #-- Paquetes a utilizar dentro de la shell
        packages = [ hola ];

        #-- Comandos a ejecutar al arrancar la shell
        shellHook = ''
           echo "Probando..."
        '';
    }


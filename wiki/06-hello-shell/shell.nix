let
    pkgs = import <nixpkgs> {};

    #-- Construir el paquete hello
    hello = pkgs.callPackage ./hello.nix { };
in
    #-- Abrir una shell
    pkgs.mkShellNoCC {

        #-- Paquetes a utilizar dentro de la shell
        packages = [ pkgs.cowsay hello ];

        #-- Comandos a ejecutar al arrancar la shell
        shellHook = ''
            cowsay hola...
            hello
        '';
    }


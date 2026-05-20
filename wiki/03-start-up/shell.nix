let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-24.05";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in

pkgs.mkShellNoCC {
  packages = with pkgs; [
    cowsay
    lolcat
  ];

    #-- Variable de entorno
    SALUDO = "Hola nix!!!!";

  #-- Comando a ejecutar al arrancar la shell
  shellHook = ''
    echo $SALUDO | cowsay | lolcat
  '';
}


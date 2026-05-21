let
  pkgs = import <nixpkgs> {};
in
  pkgs.mkShellNoCC {
    packages = [ pkgs.cowsay ];
    shellHook = ''
      cowsay hola...
    '';
  }

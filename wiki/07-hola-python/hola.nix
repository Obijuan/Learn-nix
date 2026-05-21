{ pkgs ? import <nixpkgs> {} }:

#-- Crear ejecutable llamado hola, a partir de ./hola.py
pkgs.writers.writePython3Bin "hola" {} (builtins.readFile ./hola.py)

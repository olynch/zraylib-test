{ pkgs, ... }:

let
  shell = pkgs.mkShell {
    hardeningDisable = [ "all" ];
    buildInputs = with pkgs; [ zig raylib pkgconfig ];
  };
in { inherit shell; }

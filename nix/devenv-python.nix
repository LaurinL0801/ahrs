{
  pkgs,
  lib,
  ...
}: {
  env.LD_LIBRARY_PATH = lib.makeLibraryPath [
    pkgs.zlib
    pkgs.stdenv.cc.cc.lib
  ];
  languages.python = {
    enable = true;
    #version = "3.13";

    uv = {
      enable = true;
      sync = {
        enable = true;
        allExtras = true;
      };
    };
  };
}

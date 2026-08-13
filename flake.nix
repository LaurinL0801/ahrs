{
  description = "python dev env";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    import-tree.url = "github:denful/import-tree";
    pre-commit-hooks.url = "github:cachix/pre-commit-hooks.nix";

    devenv.url = "github:cachix/devenv";
  };

  outputs = inputs:
    inputs.flake-parts.lib.mkFlake {inherit inputs;}
    (inputs.import-tree.filterNot (inputs.nixpkgs.lib.hasInfix "devenv") ./nix);
}

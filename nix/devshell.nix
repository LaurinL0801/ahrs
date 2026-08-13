{
  self,
  inputs,
  ...
}: {
  imports = [inputs.devenv.flakeModule];
  perSystem = {
    config,
    pkgs,
    ...
  }: {
    devenv.shells.default = {
      imports = [
        ./devenv-python.nix
        ./devenv-nix.nix
      ];
      packages = with pkgs; [
        just
        just-formatter
        just-lsp
      ];
    };
  };
}

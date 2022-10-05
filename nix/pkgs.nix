let
  sources = import ./sources.nix {};

  haskellNix = import sources.haskellNix {};

  nixpkgsSrc = haskellNix.sources.nixpkgs-unstable;
  nixpkgsArgs = haskellNix.nixpkgsArgs;

  native = import nixpkgsSrc nixpkgsArgs;
  roborio = import nixpkgsSrc (nixpkgsArgs // {
    crossSystem = { config = "arm-unknown-linux-gnueabi"; };
  });
in {
  inherit native roborio;
}
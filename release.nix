let
  pkgsNix = import ./nix/pkgs.nix;
  app = import ./default.nix;

  native = app { pkgs = pkgsNix.native; };
  roborio = app { pkgs = pkgsNix.roborio; };
in {
  native = native.HaskellNixPlzWork.components.exes.HaskellNixPlzWork-exe;
  roborio = roborio.HaskellNixPlzWork.components.exes.HaskellNixPlzWork-exe;
}
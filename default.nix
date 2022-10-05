let
  pkgsNix = import ./nix/pkgs.nix;
in { pkgs ? pkgsNix.roborio }: pkgs.haskell-nix.project {
  # 'cleanGit' cleans a source directory based on the files known by git
  # src = pkgs.haskell-nix.haskellLib.cleanGit {
  #   name = "HaskellNixPlzWork";
  #   src = ./.;
  # };
  src = ./.;
  # Specify the GHC version to use.
  # compiler-nix-name = "ghc8107"; # Not required for `stack.yaml` based projects.
}
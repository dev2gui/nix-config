# Custom packages, that can be defined similarly to ones from nixpkgs
# You can build them using 'nix build .#example' or (legacy) 'nix-build -A example'

{ pkgs ? (import ../nixpkgs.nix) { } }: {
  swww = pkgs.callPackage ./swww { };
  sddm-aerial = pkgs.callPackage ./sddm-aerial { };
}

{
  description = "Aptakube AppImage";

  outputs = { self, nixpkgs }: {
    packages.x86_64-linux.default = let
      pkgs = import nixpkgs { system = "x86_64-linux"; };
    in pkgs.appimageTools.wrapType2 {
      name = "aptakube";
      src = pkgs.fetchurl {
        url = "https://releases.aptakube.com/aptakube_1.11.4_amd64.AppImage";
        hash = "sha256-G5E7qqWA53W/6SPEZmvqKKcm+INo45L48W5PLdtmmU0=";
      };
    };
  };
}
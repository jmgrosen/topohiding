with import <nixpkgs> {};
stdenv.mkDerivation rec {
  name = "env";
  env = buildEnv { name = name; paths = buildInputs; };
  buildInputs = [
    python36
    python36Packages.networkx
    python36Packages.matplotlib
  ];
}

derivation {
  system = "i686-linux";
  name = "unhexl.ts";
  builder = import ../00-unhex;
  args = [ "${ builtins.fetchGit {
    url = "https://github.com/IohannesArnold/hex2asm";
    ref = "master";
    rev = "3849668f74eb68f65cee070960678eebea78b398";
  } }/1-unhexl+elfify/unhexl.ts.x" "/nix/store/cdig6pkb200lz5m2m5avg9yf68n6h1xi-unhexl.ts" ];
  preferLocalBuild = true;
  outputHashAlgo = "sha256";
  outputHashMode = "recursive";
  outputHash = "1dy4i60fg3frv5x60qj9h78dbc4qg7mns6257j2a3dhkg66rhrhn";
}

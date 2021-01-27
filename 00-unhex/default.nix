derivation {
  system = "i686-linux";
  name = "unhex";
  builder = ./unhex;
  args = [ "${ builtins.fetchGit {
    url = "https://github.com/IohannesArnold/hex2asm";
    ref = "master";
    rev = "3849668f74eb68f65cee070960678eebea78b398";
  } }/0-unhex/unhex.x" "/nix/store/vz5y20vjvhllbx0p8rz60wrs88x7qxiw-unhex" ];
  preferLocalBuild = true;
  outputHashAlgo = "sha256";
  outputHashMode = "recursive";
  outputHash = "1pjr5zqi0sdgjimb0c4mybkgw8bd06k2g8dgaq7s6g73xyaqksjz";
}

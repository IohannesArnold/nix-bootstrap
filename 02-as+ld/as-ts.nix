derivation {
  system = "i686-linux";
  name = "as.ts";
  builder = import ./as-v2.nix;
  args = [ "${ builtins.fetchGit {
    url = "https://github.com/IohannesArnold/hex2asm";
    ref = "master";
    rev = "3849668f74eb68f65cee070960678eebea78b398";
  } }/3-as+ld/as.s" "/nix/store/1z4lcxsnja7ja80vxkp2zq8hi470pric-as.ts" ];
  preferLocalBuild = true;
  outputHashAlgo = "sha256";
  outputHashMode = "recursive";
  outputHash = "014f7max2zxlmvgrm613hqnv04qarj4cbryx9haa0s9ynw1jx1vs";
}

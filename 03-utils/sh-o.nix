derivation {
  system = "i686-linux";
  name = "sh.o";
  builder = import ../02-as+ld/as-v2_5.nix;
  args = [ "${ builtins.fetchGit {
    url = "https://github.com/IohannesArnold/hex2asm";
    ref = "master";
    rev = "3849668f74eb68f65cee070960678eebea78b398";
  } }/4-asmutils/sh.s" "/nix/store/r25ji5bd4xdwrnv1w2m3ma2splk4sggj-sh.o" ];
  preferLocalBuild = true;
  outputHashAlgo = "sha256";
  outputHashMode = "flat";
  outputHash = "149i6pz3fnzy4dj599ccsmd6zkfhvj2bdczcpschk54db2zz2n4i";
}

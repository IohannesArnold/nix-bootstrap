derivation {
  system = "i686-linux";
  name = "sh.o";
  builder = import ../02-as+ld/as-v2_5.nix;
  args = [ "${ builtins.fetchGit {
    url = "https://github.com/IohannesArnold/hex2asm";
    ref = "master";
    rev = "72b530cdbca1baf84489f03f0d1ff923d219dafd";
  } }/4-asmutils/sh.s" "/nix/store/mz4wzr2rdq75nhlcbhhirs41y6lz97bh-sh.o" ];
  preferLocalBuild = true;
  outputHashAlgo = "sha256";
  outputHashMode = "flat";
  outputHash = "0x389zyf8ddnadg2dmxs9n3vxlz9609qyfcjm8l4ricrx3549jgv";
}

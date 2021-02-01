derivation {
  system = "i686-linux";
  name = "ld.ts";
  builder = import ./as-v2.nix;
  args = [ "${ builtins.fetchGit {
    url = "https://github.com/IohannesArnold/hex2asm";
    ref = "master";
    rev = "72b530cdbca1baf84489f03f0d1ff923d219dafd";
  } }/3-as+ld/ld.s" "/nix/store/6iq1l3wvpn2k1rk18l64lkhb82kv67ki-ld.ts" ];
  preferLocalBuild = true;
  outputHashAlgo = "sha256";
  outputHashMode = "flat";
  outputHash = "1jhklw4icb0m69pzm9d6w2r3ywjr0z9msj9jmpzzlxg7war7rll9";
}

derivation {
  system = "i686-linux";
  name = "as+ld";
  builder = "${import ../03-utils}/bin/sh";
  # Okay, the above is cheating if we insist that no stage depend on a higher
  # stage, but it doesn't ruin the bootstrap and makes things more convenient.
  src = builtins.fetchGit {
    url = "https://github.com/IohannesArnold/hex2asm";
    ref = "master";
    rev = "72b530cdbca1baf84489f03f0d1ff923d219dafd";
  };
  as = import ./as-v2_5.nix;
  ld = import ./ld-v2_5.nix;
  utils = import ../03-utils;
  args = [ ./build_default.sh ];
  preferLocalBuild = true;
  outputHashAlgo = "sha256";
  outputHashMode = "recursive";
  outputHash = "0fyhjv5dpfnrg6kqpqgzp0f4kj8gdd053swivqmcn55qsmb5m9cm";
}

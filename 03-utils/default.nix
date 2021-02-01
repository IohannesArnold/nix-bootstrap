derivation {
  system = "i686-linux";
  name = "utils";
  builder = import ./sh.nix;
  src = builtins.fetchGit {
    url = "https://github.com/IohannesArnold/hex2asm";
    ref = "master";
    rev = "72b530cdbca1baf84489f03f0d1ff923d219dafd";
  };
  as = import ../02-as+ld/as-v2_5.nix;
  ld = import ../02-as+ld/ld-v2_5.nix;
  args = [ ./build_utils.sh ];
  preferLocalBuild = true;
  outputHashAlgo = "sha256";
  outputHashMode = "recursive";
  outputHash = "0qcy24cfry5ll5djsknbxwkjjq2zkll32w3ck85pb8alg03w64x8";
}

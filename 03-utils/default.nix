derivation {
  system = "i686-linux";
  name = "utils";
  builder = import ./sh.nix;
  src = builtins.fetchGit {
    url = "https://github.com/IohannesArnold/hex2asm";
    ref = "master";
    rev = "3849668f74eb68f65cee070960678eebea78b398";
  };
  as = import ../02-as+ld/as-v2_5.nix;
  ld = import ../02-as+ld/ld-v2_5.nix;
  args = [ ./build_utils.sh ];
  preferLocalBuild = true;
  outputHashAlgo = "sha256";
  outputHashMode = "recursive";
  outputHash = "1ii7pai5adi5hpg25xng77d3i290ikcgxf352v1jvz2gjvckhr21";
}

derivation {
  system = "i686-linux";
  name = "as.ts";
  builder = import ../01-elfify+unhexl/unhexl.nix;
  args = [ "${ builtins.fetchGit {
    url = "https://github.com/IohannesArnold/hex2asm";
    ref = "master";
    rev = "72b530cdbca1baf84489f03f0d1ff923d219dafd";
  } }/2-as/as.ts.xl" "/nix/store/jg9ndgizzjqyj5iz1kc39jqfhck0lv5b-as.ts" ];
  preferLocalBuild = true;
  outputHashAlgo = "sha256";
  outputHashMode = "recursive";
  outputHash = "0w4rh6gpv4sj3r753wfsxz5k8fzz1079w0lrs6bmfb0iglz5xir1";
}

derivation {
  system = "i686-linux";
  name = "B-lang";
  builder = "${import ../03-utils}/bin/sh";
  src = builtins.fetchGit {
    url = "https://github.com/IohannesArnold/asm2c";
    ref = "master";
    rev = "c20c719595a6634f3fbe2889f4c43b822f948ec6";
  };
  binutils = import ../02-as+ld;
  utils = import ../03-utils;
  args = [ ./build.sh ];
  preferLocalBuild = true;
  outputHashAlgo = "sha256";
  outputHashMode = "recursive";
  outputHash = "0hi2csqanvq48f21kaar86hxhxlnaqn9i3nh8aic4krm16q7g39g";
}

derivation {
  system = "i686-linux";
  name = "libc";
  builder = "${import ../03-utils}/bin/sh";
  src = builtins.fetchGit {
    url = "https://github.com/IohannesArnold/asm2c";
    ref = "master";
    rev = "c20c719595a6634f3fbe2889f4c43b822f948ec6";
  };
  binutils = import ../02-as+ld;
  utils = import ../03-utils;
  bc = import ../04-b_compiler;
  args = [ ./build.sh ];
  preferLocalBuild = true;
  outputHashAlgo = "sha256";
  outputHashMode = "recursive";
  outputHash = "10g6gsnvr51085jym5gn8pw1zijp9sy1j0b9gz05sdjryrbz8f2y";
}

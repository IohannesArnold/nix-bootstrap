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
  b-compiler = import ../04-b_compiler;
  args = [ ./build.sh ];
  preferLocalBuild = true;
  outputHashAlgo = "sha256";
  outputHashMode = "recursive";
  outputHash = "0cxnrn7lzlg2rmn4zp8zjpqn0k0vp2p3cp5m0fq013j3lq9b6gd0";
}

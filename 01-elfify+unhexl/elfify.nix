derivation {
  system = "i686-linux";
  name = "elfify";
  builder = import ../00-unhex;
  args = [ "${ builtins.fetchGit {
    url = "https://github.com/IohannesArnold/hex2asm";
    ref = "master";
    rev = "72b530cdbca1baf84489f03f0d1ff923d219dafd";
  } }/1-unhexl+elfify/elfify.x" "/nix/store/jws0rca319j6dj365alli77gdinz7mi5-elfify" ];
  preferLocalBuild = true;
  outputHashAlgo = "sha256";
  outputHashMode = "recursive";
  outputHash = "1la83gs75pybb4qjrvgq7s2k0i0wbj2hsi1yd8awpmpsxzvnb0di";
}

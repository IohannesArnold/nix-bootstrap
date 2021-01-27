derivation {
  system = "i686-linux";
  name = "ld";
  builder = import ../01-elfify+unhexl/elfify.nix;
  args = [ "${ import ./ld-ts.nix }" "/nix/store/c281pm1wmc9y8fggmhf3nhcipzklg7b1-ld" ];
  preferLocalBuild = true;
  outputHashAlgo = "sha256";
  outputHashMode = "recursive";
  outputHash = "0ryc4c9581kbcqwkpmw993mm4700a04bvs1xxk41fgx4fyx497ck";
}

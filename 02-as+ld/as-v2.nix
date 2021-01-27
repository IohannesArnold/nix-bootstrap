derivation {
  system = "i686-linux";
  name = "as";
  builder = import ../01-elfify+unhexl/elfify.nix;
  args = [ "${ import ./as-ts-v2.nix }" "/nix/store/n9av0vx0i4szx0x1d54yhgzl6a6p4fgx-as" ];
  preferLocalBuild = true;
  outputHashAlgo = "sha256";
  outputHashMode = "recursive";
  outputHash = "1p6z8yrkg6gbkh04a08r7j7i1y859lgd9jfkasvmhp7xvwpik7r6";
}

derivation {
  system = "i686-linux";
  name = "sh";
  builder = import ../02-as+ld/ld-v2_5.nix;
  args = [ "-o" "/nix/store/n74bp6idl355rlm1ma6ndq44wipxvc01-sh" "${ import ./sh-o.nix }" ];
  preferLocalBuild = true;
  outputHashAlgo = "sha256";
  outputHashMode = "recursive";
  outputHash = "02vl677niwa02l2l89mdpvfrhppzjgm14c6yfsajwwfbz9m10pdq";
}

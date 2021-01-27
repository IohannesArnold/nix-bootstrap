derivation {
  system = "i686-linux";
  name = "as";
  builder = import ../01-elfify+unhexl/elfify.nix;
  args = [ "${ import ./as-ts.nix }" "/nix/store/v65w4ikmh6d3lbcgba08k65zn81pxzda-as" ];
  preferLocalBuild = true;
  outputHashAlgo = "sha256";
  outputHashMode = "recursive";
  outputHash = "08m54vz50hgzbgvm86srwm1kf5rnrvl3fqqb78607brmm3ic6j49";
}

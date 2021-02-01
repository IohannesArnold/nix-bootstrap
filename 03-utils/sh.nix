derivation {
  system = "i686-linux";
  name = "sh";
  builder = import ../02-as+ld/ld-v2_5.nix;
  args = [ "-o" "/nix/store/bs8fcchmv67m7f722w98qsq2b0f3x1i2-sh" "${ import ./sh-o.nix }" ];
  preferLocalBuild = true;
  outputHashAlgo = "sha256";
  outputHashMode = "recursive";
  outputHash = "1gi19sa8sgc0jx2x8d2wxfmg72kx3nca6a9ny84lpq0zhfss1dnc";
}

derivation {
  system = "i686-linux";
  name = "unhexl";
  builder = import ./elfify.nix;
  args = [ "${import ./unhexl-ts.nix}" "/nix/store/m8lj4xzag5kih27k888b82cw9g4gfdx1-unhexl" ];
  preferLocalBuild = true;
  outputHashAlgo = "sha256";
  outputHashMode = "recursive";
  outputHash = "0yi8cqn7dbkg4m9sj1rfcbdxdkfl08299nn7sl42sc54psp4330k";
}

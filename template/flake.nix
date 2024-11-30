{
  inputs = {
    rust-flake.url = github:poollovernathan/rust-flake;
  };
  outputs = { self, rust-flake }: {
    packages = rust-flake.lib.perSystem (pkgs: {
      default = rust-flake.lib.crossCompile' {
        inherit pkgs;
        src = ./.;
        target = null;
      };
    });
  };
}

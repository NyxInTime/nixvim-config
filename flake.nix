{
  description = "My standalone Nixvim configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      nixvim,
    }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
      nixvim' = nixvim.legacyPackages.${system};

      nvim = nixvim'.makeNixvimWithModule {
        inherit pkgs;
        module = import ./nixvim.nix;
      };
    in
    {
      packages.${system}.default = nvim;
    };
}

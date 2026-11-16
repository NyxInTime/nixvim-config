{ pkgs, inputs, ... }:
let
  nixvim' = inputs.nixvim.legacyPackages.${pkgs.system};
  myNvim = nixvim'.makeNixvimWithModule {
    inherit pkgs;
    module = import ./nixvim.nix;
  };
in
{
  # 1. Include your custom Neovim inside the devenv shell
  packages = [ myNvim ];

  dotenv.enable = true;

  # 2. Automatically pull from and push to your Cachix cache
  cachix = {
    enable = true;
    pull = [ "nyxintimenixvim" ];
    push = "nyxintimenixvim";
  };
}

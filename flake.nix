{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nixos-hardware.url = "github:NixOS/nixos-hardware/master"; # ハードウェア設定のコレクション
    xremap.url = "github:xremap/nix-flake"; # キー設定をいい感じに変更できるツール
    vscode-server.url = "github:nix-community/nixos-vscode-server";
  };

  outputs = inputs: {
    nixosConfigurations = {
      myNixOS = inputs.nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./configuration.nix
          inputs.vscode-server.nixosModules.default
          ({ config, pkgs, ... }: {
            services.vscode-server.enable = true;
          })
        ];
        specialArgs = {
            inherit inputs; # `inputs = inputs;`と等しい
        };
      };
    };
  };
}

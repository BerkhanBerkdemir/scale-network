{
  release = "2405";

  modules =
    {
      inputs,
      ...
    }:
    {
      imports = [
        ./configuration.nix
        ./microvm-config.nix
        inputs.microvm.nixosModules.microvm
      ];

      config = {
        nixpkgs.hostPlatform = "x86_64-linux";

        scale-network = {
          base.enable = true;
          services.prometheus.enable = true;
          services.ssh4vms.enable = true;
          timeServers.enable = true;

          users.berkhan.enable = true;
          users.dlang.enable = true;
          users.jsh.enable = true;
          users.kylerisse.enable = true;
          users.owen.enable = true;
          users.rhamel.enable = true;
          users.rob.enable = true;
          users.root.enable = true;
          users.ruebenramirez.enable = true;
        };

      };
    };
}

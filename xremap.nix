{
  inputs,
  ...
}: 
{
  imports = [inputs.xremap.nixosModules.default];
  services.xremap = {
    userName = "bl";
    serviceMode = "system";
    config = {
      modmap = [
        {
          name = "CapsLock is dead";
          remap = {
            CapsLock = "HENKAN";
          };
        }
      ];
    };
  };
}

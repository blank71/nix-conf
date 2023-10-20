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
      keymap = [
        {
          name = "Eisu";
          remap = {
            Shift-CapsLock = "HENKAN";
            CapsLock = "HENKAN";
            M-Grave = "HENKAN";
          }; 
          application = {
            not = [
                "remmina"
            ];
          };
        }
      ];
    };
  };
}

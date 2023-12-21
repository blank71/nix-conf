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
          name = "HENKAN";
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
        {
          name = "Alt";
          remap = {
            Alt-Minus = "Alt-Left";
            Alt-Equal = "Alt-Right";
          };
        }
        {
          name = "move workspace";
          remap = {
            Super-J = "Super-PageUp";
            Super-K = "Super-PageDown";
          };
        }
      ];
    };
  };
}

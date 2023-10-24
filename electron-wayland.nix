self:
let
  enableWayland = drv: bin: drv.overrideAttrs (
    old: {
      nativeBuildInputs = (old.nativeBuildInputs or []) ++ [ self.makeWrapper ];
      postFixup = (old.postFixup or "") + ''
        wrapProgram $out/bin/${bin} \
          --add-flags "--enable-features=UseOzonePlatform" \
          --add-flags "--ozone-platform=wayland"
      '';
    }
  );
in
super:
  {
    slack = enableWayland super.slack "slack";
    #cdiscord = enableWayland super.discord "discord";
    drawio = (
      super.drawio.override {
        commandLineArgs = "--enable-features=UseOzonePlatform --ozone-platform=wayland";
      }
    );
    vscode = ( 
      super.vscode.override {
        commandLineArgs = "--enable-features=UseOzonePlatform --ozone-platform=wayland";
      }
    );
    google-chrome = (
      super.google-chrome.override {
        commandLineArgs = "--enable-features=UseOzonePlatform --ozone-platform=wayland";
      }
    );
  }

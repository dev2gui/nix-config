{ lib, fetchurl, appimageTools }:

let
  pname = "dbgate";
  version = "5.2.7";
  src = fetchurl {
    url = "https://github.com/dbgate/dbgate/releases/download/v${version}/dbgate-${version}-linux_x86_64.AppImage";
    sha256 = "sha256-dYAaJbzROx8Qc/LIwEj0nH6+WOsRYvUQW0hqDOmahpY=";
  };
  appimageContents = appimageTools.extractType2 { inherit pname src version; };
in

appimageTools.wrapType2 {
  inherit pname src version;

  extraPkgs = pkgs: with pkgs; [
    ffmpeg
  ];

  extraInstallCommands = ''
    mv $out/bin/${pname}-${version} $out/bin/${pname}
    install -m 444 -D ${appimageContents}/dbgate.desktop -t $out/share/applications
    substituteInPlace $out/share/applications/dbgate.desktop --replace 'Exec=AppRun --no-sandbox' 'Exec=${pname}'
    cp -r ${appimageContents}/usr/share/icons $out/share
  '';

  meta = with lib; {
    description = "A fully open source & end-to-end encrypted note taking app.";
    homepage = "https://shotcut.com";
    license = licenses.gpl3Only;
    platforms = [ "x86_64-linux" ];
  };
}


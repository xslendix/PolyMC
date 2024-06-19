{ stdenv
, lib
, symlinkJoin
, addOpenGLRunpath
, polymc-unwrapped
, wrapQtAppsHook
, jdk8
, jdk17
, jdk21
, xorg
, libpulseaudio
, qtbase
, libGL
, glfw
, openal
, udev
, wayland
, qtwayland
, msaClientID ? ""
, jdks ? [ jdk21 jdk17 jdk8 ]
, enableLTO ? false
  # flake
, self
, version
}:

let
  polymcInner = polymc-unwrapped.override { inherit msaClientID enableLTO; };
in

symlinkJoin {
  name = "polymc";
  inherit version;

  paths = [ polymcInner ];

  nativeBuildInputs = [ wrapQtAppsHook ];
  buildInputs = [ qtbase qtwayland ];

  postBuild = ''
    wrapQtAppsHook
  '';

  qtWrapperArgs =
    let
      runtimeLibs = (with xorg; [
        libX11
        libXext
        libXcursor
        libXrandr
        libXxf86vm
      ]) ++
      # lwjgl
      [
        libpulseaudio
        libGL
        glfw
        openal
        stdenv.cc.cc.lib
        udev # OSHI
        wayland
      ];
    in
    [
      "--prefix POLYMC_JAVA_PATHS : ${lib.makeSearchPath "bin/java" jdks}"
      "--set LD_LIBRARY_PATH ${addOpenGLRunpath.driverLink}/lib:${lib.makeLibraryPath runtimeLibs}"
    ];

    inherit (polymcInner) meta;
}

{ buildGhidraExtension
}:

buildGhidraExtension {
  pname = "testextension2";
  version = "0.0.1";
  # Simplify the example

  dontUnpack = true;
  dontBuild = true;

  installPhase = ''
  runHook postInstall
  '';
}

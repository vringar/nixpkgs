{ lib
, buildGhidraExtension
, ghidra
}:

buildGhidraExtension {
  pname = "testextension";
  version = lib.getVersion ghidra;
  # Simplify the example

  dontUnpack = true;
  dontBuild = true;

  installPhase = ''
    mkdir $out
    echo "Built for ${ghidra.pname}" > $out/install.txt
  '';

}

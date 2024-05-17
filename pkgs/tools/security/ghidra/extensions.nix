{ lib, newScope, callPackage, ghidra }:

lib.makeScope newScope (self: {
  inherit (callPackage ./build-extension.nix { inherit ghidra; }) buildGhidraExtension buildGhidraScripts;

  ghidraninja-ghidra-scripts = self.callPackage ./extensions/ghidraninja-ghidra-scripts { };

  gnudisassembler = self.callPackage ./extensions/gnudisassembler { };

  machinelearning = self.callPackage ./extensions/machinelearning { };

  sleighdevtools = self.callPackage ./extensions/sleighdevtools { };

  testextension = self.callPackage ./extensions/testextension { inherit ghidra; };
  testextension2 = self.callPackage ./extensions/testextension2 { };
})

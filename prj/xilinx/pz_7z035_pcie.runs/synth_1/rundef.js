//
// Vivado(TM)
// rundef.js: a Vivado-generated Runs Script for WSH 5.1/5.6
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//

var WshShell = new ActiveXObject( "WScript.Shell" );
var ProcEnv = WshShell.Environment( "Process" );
var PathVal = ProcEnv("PATH");
if ( PathVal.length == 0 ) {
  PathVal = "D:/APP/vivado_18_3/SDK/2018.3/bin;D:/APP/vivado_18_3/Vivado/2018.3/ids_lite/ISE/bin/nt64;D:/APP/vivado_18_3/Vivado/2018.3/ids_lite/ISE/lib/nt64;D:/APP/vivado_18_3/Vivado/2018.3/bin;";
} else {
  PathVal = "D:/APP/vivado_18_3/SDK/2018.3/bin;D:/APP/vivado_18_3/Vivado/2018.3/ids_lite/ISE/bin/nt64;D:/APP/vivado_18_3/Vivado/2018.3/ids_lite/ISE/lib/nt64;D:/APP/vivado_18_3/Vivado/2018.3/bin;" + PathVal;
}

ProcEnv("PATH") = PathVal;

var RDScrFP = WScript.ScriptFullName;
var RDScrN = WScript.ScriptName;
var RDScrDir = RDScrFP.substr( 0, RDScrFP.length - RDScrN.length - 1 );
var ISEJScriptLib = RDScrDir + "/ISEWrap.js";
eval( EAInclude(ISEJScriptLib) );


ISEStep( "vivado",
         "-log PCIe_SSD_wrapper.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source PCIe_SSD_wrapper.tcl" );



function EAInclude( EAInclFilename ) {
  var EAFso = new ActiveXObject( "Scripting.FileSystemObject" );
  var EAInclFile = EAFso.OpenTextFile( EAInclFilename );
  var EAIFContents = EAInclFile.ReadAll();
  EAInclFile.Close();
  return EAIFContents;
}
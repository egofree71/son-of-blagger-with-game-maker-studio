
//// This script sets the 3D mode of an emitter
// Arguments: emitter ID, 3D mode (0-2D, 1-3D)
// The actual changes are:
//// for 2D: going to relative position mode, setting position to 0
//// for 3D: going to absolute position mode

external_call( global._sga_set3dm, argument0, argument1 );
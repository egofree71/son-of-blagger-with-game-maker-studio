
//// This script sets the 3D distance factor of an emitter
// Arguments: emitter ID, distance factor (0 < x < inf)
// distance factor - how quickly the sound fades out in distance

external_call( global._sga_setdf, argument0, argument1 );
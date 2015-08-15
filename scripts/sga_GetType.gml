
//// This script gets the volume of an emitter
// Arguments: emitter ID
// Returns type(0 - 2^32-1)

return external_call( global._sga_getflg, argument0 );
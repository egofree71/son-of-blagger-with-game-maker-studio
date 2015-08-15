
//// This script gets the volume of the group
// Arguments: group ID (0-31)
// Returns the volume (0-1)

return external_call( global._sga_getgv, argument0 );
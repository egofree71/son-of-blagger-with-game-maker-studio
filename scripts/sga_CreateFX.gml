
// Creates a simple sound effect
// Arguments: file name, type flags

var eid;
eid = sga_CreateEmitter( argument0 );
sga_Set3DMode( eid, 0 );
sga_SetType( eid, argument1 );
return eid;
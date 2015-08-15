
//// This script plays a track
// Arguments: emitter ID or -1 for the first time, File name, Looping mode (0/1), Type flags
// Returns the ID
// Sample usage:
// [on creation]: TrackID = -1
// [on song change]: TrackID = sga_TrackPlay( TrackID, newfile, loop, flags );
// [on destruction]: sga_DestroyEmitter( TrackID );

return external_call( global._sga_trkply, argument0, argument1, argument2, argument3 );
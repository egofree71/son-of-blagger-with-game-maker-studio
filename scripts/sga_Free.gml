
//// This script frees the sound system and the DLL

external_call( global._sga_free );
external_free( "SGAudio.dll" );
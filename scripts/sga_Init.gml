
//// This script initializes the DLL and the sound system

var nm, ct, rt;
nm = "SGAudio.dll";
ct = dll_cdecl;
rt = ty_real;
st = ty_string;
//// main functions
// system
global._sga_init = external_define( nm, "sga_Init", ct, rt, 0 );
global._sga_free = external_define( nm, "sga_Free", ct, rt, 0 );
// listener
global._sga_setlp = external_define( nm, "sga_SetListenerPosition", ct, rt, 3, rt, rt, rt );
global._sga_setld = external_define( nm, "sga_SetListenerDirection", ct, rt, 6, rt, rt, rt, rt, rt, rt );
// groups
global._sga_setgv = external_define( nm, "sga_SetGroupVolume", ct, rt, 2, rt, rt );
global._sga_getgv = external_define( nm, "sga_GetGroupVolume", ct, rt, 1, rt );
//// emitters
// instances
global._sga_crem = external_define( nm, "sga_CreateEmitter", ct, rt, 1, st );
global._sga_dsem = external_define( nm, "sga_DestroyEmitter", ct, rt, 1, rt );
// playback control
global._sga_play = external_define( nm, "sga_Play", ct, rt, 1, rt );
global._sga_pause = external_define( nm, "sga_Pause", ct, rt, 1, rt );
global._sga_stop = external_define( nm, "sga_Stop", ct, rt, 1, rt );
global._sga_rwnd = external_define( nm, "sga_Rewind", ct, rt, 1, rt );
global._sga_isply = external_define( nm, "sga_IsPlaying", ct, rt, 1, rt );
// "flow" control
global._sga_setvol = external_define( nm, "sga_SetVolume", ct, rt, 2, rt, rt );
global._sga_getvol = external_define( nm, "sga_GetVolume", ct, rt, 1, rt );
global._sga_fadevol = external_define( nm, "sga_FadeVolume", ct, rt, 3, rt, rt, rt );
global._sga_setflg = external_define( nm, "sga_SetType", ct, rt, 2, rt, rt );
global._sga_getflg = external_define( nm, "sga_GetType", ct, rt, 1, rt );
global._sga_setloop = external_define( nm, "sga_SetLooping", ct, rt, 2, rt, rt );
// 3D control
global._sga_set3dm = external_define( nm, "sga_Set3DMode", ct, rt, 2, rt, rt );
global._sga_setdf = external_define( nm, "sga_SetDistFactor", ct, rt, 2, rt, rt );
global._sga_setpos = external_define( nm, "sga_SetPosition", ct, rt, 4, rt, rt, rt, rt );
//// tracks
global._sga_trkply = external_define( nm, "sga_TrackPlay", ct, rt, 4, rt, st, rt, rt );

external_call( global._sga_init );

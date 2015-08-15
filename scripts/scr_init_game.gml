// The current game_state (see constants)
globalvar game_state;
// Store the current level value
globalvar level;
// Array which contains for each level : the parent object of monsters
// and the start position of the player
globalvar level_info;
// Monster speed measured in pixels 
globalvar monster_speed;
// Player speed measured in pixels 
globalvar player_speed;
// Counters used to change monster images
globalvar animation_counter_max;
globalvar animation_counter;
// Array which contains the jump path
globalvar jump_path;
// The fonts used to display text
globalvar fonts;
// Level of air remaining in the current level
globalvar air_level;
// Number of keys taken in the current level
globalvar keys_taken;
// Boolean which states if there is a bonus man or not
globalvar bonus_man;
// Array which contains the colors for the 'bonus_man' sprite
globalvar bonus_man_colors;
//Array which contains the active regions for each level
globalvar active_region;

// Initialize the fonts
fonts  = font_add_sprite(spr_fonts, ord(' '), false, 0);

draw_set_font(fonts);

draw_set_halign(fa_left);

monster_speed = 1;
player_speed = 2;

animation_counter_max = 19;
animation_counter = animation_counter_max;

level = 1;
score = 0;
lives = 3;
bonus_man = false;

game_state = START_LEVEL;

// Initialize the 'jump_path' array
scr_init_jump_path();

// Initialize the 'level_info' array
scr_init_level_info();

// Initialize the 'bonus_man' array
scr_init_bonus_man_colors();

// Initialize the 'active_regions' array
scr_init_active_regions();
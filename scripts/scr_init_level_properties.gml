// Reset air level
air_level = 480;
// Reset the number of keys taken
keys_taken = 0;

// Hide the monsters
with (obj_monster)
{
    visible = false;
}

instance_deactivate_object(obj_monster);

// Reinitialize the player properties for the current level
with (obj_blagger)
{
    x = level_info[level,PLAYER_X_POSITION];
    y = level_info[level,PLAYER_Y_POSITION]
    event_user(0);
    sprite_index = spr_blagger_right;
    visible = true;
}

// Desactivate everything, except the HUD at the bottom
instance_deactivate_region(0, 0, room_width, obj_HUD.y - 1, true, true);

// Get the number of regions to activate for the current level   
var number_of_regions = array_length_2d(active_region,level) / 4;

// No regions specified, activate everything
if (number_of_regions = 0)
{
    instance_activate_all();
    exit;
}

// Active the regions for the current level
for (i = 0 ; i <= number_of_regions - 1 ; i += 1)
   instance_activate_region(active_region[level,LEFT_COORDINATE + i*4], active_region[level,TOP_COORDINATE + i*4] , active_region[level,WIDTH + i*4] , active_region[level,HEIGHT + i*4], true);

// Deactivate again the monsters after the deactivate_region (otherwise some graphical glitches happen)
instance_deactivate_object(obj_monster);
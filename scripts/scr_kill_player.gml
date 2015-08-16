// Stop the music
//sga_Stop(eid);
game_state = PLAYER_DYING;

// Play the sound
audio_play_sound(snd_player_dying, 10, false);

// If there is the 'bonus man', remove it
if (bonus_man = true)
    bonus_man = false;
else
    lives -= 1;

// Store the player position
blagger_x_position = obj_blagger.x;
blagger_y_position = obj_blagger.y;


with (obj_blagger)
{
    visible = false;
}

deadly_fall = obj_blagger.deadly_fall;
   
instance_deactivate_object(obj_blagger);

// If the player is in a deadly fall, display white sprites
if (deadly_fall)
    instance_create(blagger_x_position - 4, blagger_y_position, obj_blagger_dying_white);
else
    instance_create(blagger_x_position - 4, blagger_y_position, obj_blagger_dying);

instance_activate_object(obj_blagger);

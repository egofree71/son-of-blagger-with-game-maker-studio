
    var inst_game_over;
    inst_game_over = instance_create(room_width / 2 - sprite_get_width(spr_game_over) / 2, view_yview[0]- sprite_get_height(spr_game_over), obj_game_over);
    
    with (inst_game_over)
    {
        path_start(path_game_over, 2, 0, false); 
    }
   
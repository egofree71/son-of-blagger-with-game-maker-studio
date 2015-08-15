switch(step)
{
    // Set the background color to red
    case 1:
        
        background_color = c_red;
        
        // Hide the monsters
        with (obj_monster)
        {
            visible = false;
        }
                
        // Display the 'explosions' before displaying the monsters
        with (level_info[level,MONSTERS_PARENT])
        {
            instance_create(x,y, obj_reverse_explosion);
        }
        
        level += 1;
            
        step += 1;
        break;
        
    // Switch back the background to the original color
    case 2:
        
        counter -= 1;
        if counter > 0 break;
        counter = 2;
         
        background_color = c_ltgray;
        
        step += 1;
        break;
    
    // Decrease slowly the small horizontal/vertical distance to the next level
    case 3:
        
        scr_activate_region();
            
        // Horizontal and vertical distances to the next level
        horizontal_distance = obj_blagger.x - level_info[level,PLAYER_X_POSITION];
        vertical_distance = obj_blagger.y - level_info[level,PLAYER_Y_POSITION];
        
        if (abs(vertical_distance = 0) or abs(horizontal_distance = 0))
        {
            step += 1;
            break;
        }
        
        if (abs(vertical_distance) < abs(horizontal_distance))
        {
            if (vertical_distance > 0)
                obj_blagger.y -= player_speed;
            else
                obj_blagger.y += player_speed;
        }
        else
        {
            if (horizontal_distance > 0)
                obj_blagger.x -= player_speed;
            else
                obj_blagger.x += player_speed;    
        }
        

        
        break;
    
    // Increase the score according to the air level remaining
    case 4:
        
        if (air_level > 0)
        {
            air_level -=6;
            score += 30;
        }
        else
        {
            step += 1;
        }

        break;
             
    //  Move the player to the position of the next level
    case 5:
                
        scr_activate_region();
                
        counter -= 1;
        if counter > 0 break;
        counter = 2;
        
        horizontal_distance = obj_blagger.x - level_info[level,PLAYER_X_POSITION];
        vertical_distance = obj_blagger.y - level_info[level,PLAYER_Y_POSITION];
        
        if (vertical_distance = 0 and horizontal_distance = 0)
        {
            step += 1;
            break;
        }
        
        if (vertical_distance = 0)
        {
            if (abs(horizontal_distance) < 16)
            {
                obj_blagger.x = level_info[level,PLAYER_X_POSITION];
                step += 1;
                break;
            }
               
            if (horizontal_distance > 0)
                obj_blagger.x -= 16;
            else
                obj_blagger.x += 16;
        }
        else
        {
        
            if (abs(vertical_distance) < 16)
            {
                obj_blagger.y = level_info[level,PLAYER_Y_POSITION];
                step += 1;
                break;
            }
            
            if (vertical_distance > 0)
                obj_blagger.y -= 16;
            else
                obj_blagger.y += 16;
        } 

        break;
          
   // Replenish the air   
   case 6:
        
        if (air_level < 480)
            air_level +=6;
        else
            step += 1;

        break;
        
    case 7:

        scr_init_level_properties();
        // Reset the image index of the animated objects
        scr_reset_animation();

        // On every new level, the user gets a 'bonus man'
        bonus_man = true;
        
        // Stop the music
        sga_Stop(eid);
        game_state = LEVEL_DISPLAYED;
        break;
            
}
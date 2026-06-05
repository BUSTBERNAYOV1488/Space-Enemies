//Scale the effect for different window sizes
scale = min(window_get_width()/1920,window_get_height()/1080);

//Modify transparency (alpha) of black mask
a = clamp(a + (fade_dir * transition_speed),0,1);

//Change rooms and/or execute other actions when mask is fully opaque
if (a == 1) {
   switch (status) {
        case "next": 
            //Execute other actions like stopping audio, etc.
            room_goto_next();
            break;
        case "credits":
            room_goto(rm_credits);
            break;
        case "end":
            game_end();
            break;
        //insert other statuses here, like goto last room, load game, etc. Example below
        
        /*case "last":
            //room_goto_previous
            break;*/
            
        default:
            //If you haven't set one of the above statuses or keep it as is, at "null," it will default to this.
            //Insert desired default actions here
            break;  
   }

   //Reverse the direction of the fade, so the black mask fades out
   fade_dir = -1
}

//If we've already faded and the mask is fully transparent again, destroy it
if (a == 0) && (fade_dir == -1) {
   instance_destroy()
}

draw_set_color(mask_color);
draw_set_alpha(a);
draw_rectangle(0, 0, 1920*scale, 1080*scale, 0);
draw_set_alpha(1);

/* */
/*  */

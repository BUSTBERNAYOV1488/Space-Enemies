scale = min(window_get_width()/1920,window_get_height()/1080);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_font(fnt_options);

//Draw Credits
draw_text_transformed(room_width/2*scale,room_height/2*scale, string_hash_to_newline("CREDITS PAGE##Greg Bayles#Homegrown Games##R to Restart, Esc to Exit"),scale,scale,0);


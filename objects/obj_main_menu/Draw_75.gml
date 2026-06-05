/// @description MODIFY VALUES IN "CREATE"
scale = min(window_get_width()/1366,window_get_height()/768);
draw_set_valign(title_valign); //Title font vertical alignment
draw_set_color(title_color); //Title font color
draw_set_halign(title_halign); //Title font Horizontal alignment
draw_set_font(title_font); //Title font

//Draw Title
draw_text_transformed(title_x*scale,title_y*scale, string_hash_to_newline(title),scale,scale,0);

//Draw Text Options
draw_set_halign(options_halign);
draw_set_valign(fa_top); 
draw_set_font(options_font);
for (j=0;j<=options;j++) {
    //Draw line
    if (y_pos==j) {
       draw_set_color(selected_color);
       if (display_arrow) draw_sprite_ext(arrow_sprite,0,x*scale - arrow_gap, (y+j*spacing+font_height/2)*scale,1,1,0,arrow_color,1);
       if (display_line) draw_line_width_colour(x*scale,(y+j*spacing+font_height+line_spacing)*scale,(x+string_width(string_hash_to_newline(string(main_menu[j]))))*scale,(y+j*spacing+font_height+line_spacing)*scale,line_weight,line_color,line_color); 
    }
    //Draw text
    else draw_set_color(not_selected_color);
    //***************Comment out the following line of code if you decide not to use CONTINUE as an option
    if (j = 0 && !file_exists("save.ini")) draw_set_color(grayed_out_color);
    draw_text_transformed(x*scale,(y+j*spacing)*scale, string_hash_to_newline(string(main_menu[j])),scale,scale,0);
}

/* */
/*  */

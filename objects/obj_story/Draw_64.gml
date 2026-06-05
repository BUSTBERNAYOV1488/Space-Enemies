draw_sprite_ext(story_sprite, current_frame, 0, 0, 1, 1, 0, c_white, 1);

var text_to_draw = string_copy(text_full, 1, floor(text_current_length));

draw_set_font(fnt_roboto_light);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

var text_w = string_width_ext(text_full, -1, box_width);
var text_h = string_height_ext(text_full, -1, box_width);

var bx = (display_get_gui_width() / 2) - (box_width / 2);
var by = display_get_gui_height() - 250;
var bw = box_width + padding * 2;
var bh = text_h + padding * 2;

draw_set_alpha(box_alpha);
draw_set_color(box_color);
draw_rectangle(bx, by, bx + bw, by + bh, false);

draw_set_alpha(1);
draw_set_color(c_black);
draw_rectangle(bx, by, bx + bw, by + bh, true);

draw_set_color(c_black)
draw_text_ext(bx + padding, by + padding, text_to_draw, -1, box_width);

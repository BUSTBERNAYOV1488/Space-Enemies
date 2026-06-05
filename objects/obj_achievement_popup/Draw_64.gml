draw_set_alpha(alpha);

draw_set_font(fnt_roboto_light);
var _title_h = string_height(text_title);
var _desc_h = string_height_ext(text_desc, -1, 300);

var _txt_w = max(string_width(text_title), string_width_ext(text_desc, -1, 300));
width = max(256, _txt_w + (padding * 2));
height = _title_h + _desc_h + (padding * 2) + 4;

var _x = display_get_gui_width() - width - 20;
var _y = y_pos;

draw_set_color(c_black);
draw_set_alpha(alpha * 0.8);
draw_rectangle(_x, _y, _x + width, _y + height, false);

draw_set_color(c_white);
draw_set_alpha(alpha);
draw_rectangle(_x, _y, _x + width, _y + height, true);

draw_set_halign(fa_left);
draw_text(_x + padding, _y + padding, text_title);

var _desc_y = _y + padding + _title_h + 4;
draw_text_transformed(_x + padding, _desc_y, text_desc, 0.8, 0.8, 0);

draw_set_alpha(1);
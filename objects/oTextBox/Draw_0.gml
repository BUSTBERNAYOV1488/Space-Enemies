/// @description  Drw the text box and "caption"
draw_self();

draw_set_halign(fa_left);
draw_set_color(c_black);
draw_set_font(fnt_roboto_light);
draw_text(x + 5, y + 5, string(Text));

draw_text(x, y - 20, string("///...DEBUGING...///"));



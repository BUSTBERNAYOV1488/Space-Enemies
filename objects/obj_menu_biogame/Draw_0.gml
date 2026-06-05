draw_set_font(fnt_roboto_light);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var xg1 = 150;
var yg1 = 768/3;

if (selected == 0) draw_set_colour(#87CEEB);
else draw_set_colour(c_white);
draw_text(xg1, yg1, exitgame);
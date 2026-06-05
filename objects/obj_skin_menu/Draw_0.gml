draw_set_font(fnt_roboto_light);draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var xg1 = 250;
var yg1 = 768/3;

if (selected == 0) draw_set_colour(#87CEEB);
else draw_set_colour(c_white);
draw_text(xg1, yg1, "Выход");

if (selected == 1) draw_set_colour(#87CEEB);
else draw_set_colour(c_white);
draw_text(xg1, yg1 + 50, "Серебрянно бессердечный")

if (selected == 2) draw_set_colour(#87CEEB);
else draw_set_colour(c_white);
draw_text(xg1, yg1+100, "Голубой");

if (selected == 3) draw_set_colour(#87CEEB);
else draw_set_colour(c_white);
draw_text(xg1, yg1+150, "Классик старый");

if (selected == 4) draw_set_colour(#87CEEB);
else draw_set_colour(c_white);
draw_text(xg1, yg1 + 200, "Стандарт");

if (selected == 5) draw_set_colour(#87CEEB);
else draw_set_colour(c_white);
draw_text(xg1, yg1+250, "Вражеский");
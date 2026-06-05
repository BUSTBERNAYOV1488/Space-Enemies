try {
health += 0.010
if !(dist1 > 500) {
	draw_line_width_colour(x + 0, y + 0, obj_mainchara.x, obj_mainchara.y, 5, c_lime, c_yellow);
	if global.defendhealther < 69 {
	global.defendhealther += 0.005
	} else {
	global.healther += 0.001
	}
}
}
catch (_ex) {

}
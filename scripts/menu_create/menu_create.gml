function menu_create(arg555, menu_name, xg, yg){
if (selected == arg555) draw_set_colour(#87CEEB);
else draw_set_colour(c_white);
draw_text(xg, yg + 200, menu_name);
}

function mouse_check_text(textx, texty, text) {
	var mx = mouse_x
	var my = mouse_y
	var text_w = string_width(text)
	var text_h = string_height(text)
	
	return (mx >= tx && mx <= tx + text_w && mt >= ty && my <= ty + text_h);
}

function draw_text_link(x, y, text) {
draw_set_color(#007bff)
draw_text(x, y, text);
var w = string_width(text);
var h = string_height(text);
draw_line(x, y + h, x + w, y + h);
}
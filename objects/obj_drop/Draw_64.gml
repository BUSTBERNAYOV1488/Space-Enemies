draw_set_valign(fa_middle);
draw_set_halign(fa_left);

draw_set_color(c_dkgray);
draw_rectangle(menu_x, menu_y, menu_x + menu_width, menu_y + menu_height, false);

draw_set_color(c_white);
var _display_text = (selected_index == -1) ? "Выберите сложность" : options[selected_index];
draw_text(menu_x + 20, menu_y + (menu_height / 2), _display_text);

draw_set_color(c_black);
draw_rectangle(menu_x, menu_y, menu_x + menu_width, menu_y + menu_height, true);

if (open) {
    var _touch_x = device_mouse_x_to_gui(0);
    var _touch_y = device_mouse_y_to_gui(0);

    for (var i = 0; i < array_length(options); i++) {
        var _oy = menu_y + menu_height + (i * menu_height);
        var _hover = point_in_rectangle(_touch_x, _touch_y, menu_x, _oy, menu_x + menu_width, _oy + menu_height);
        
        if (_hover) {
            draw_set_color(c_black);
        } else {
            draw_set_color(c_gray);
        }
        draw_rectangle(menu_x, _oy, menu_x + menu_width, _oy + menu_height, false);
        
        draw_set_color(c_white);
        draw_text(menu_x + 20, _oy + (menu_height / 2), options[i]);
        
        draw_set_color(c_black);
        draw_rectangle(menu_x, _oy, menu_x + menu_width, _oy + menu_height, true);
    }
}

draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_set_color(c_white);

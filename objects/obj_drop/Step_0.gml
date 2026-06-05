var _target_gui_x = camera_get_view_x(view_camera[0]);
var _target_gui_y = camera_get_view_y(view_camera[0]);
var _cam_w = camera_get_view_width(view_camera[0]);
var _cam_h = camera_get_view_height(view_camera[0]);

menu_x = (x - _target_gui_x) * (display_get_gui_width() / _cam_w) + offset_x;
menu_y = (y - _target_gui_y) * (display_get_gui_height() / _cam_h) + offset_y;

var _touch_x = device_mouse_x_to_gui(0);
var _touch_y = device_mouse_y_to_gui(0);

var _mouse_over_main = point_in_rectangle(_touch_x, _touch_y, menu_x, menu_y, menu_x + menu_width, menu_y + menu_height);

if (mouse_check_button_pressed(mb_left)) {
    if (_mouse_over_main) {
        open = !open;
    } 
    else if (open) {
        var _clicked_option = false;
        for (var i = 0; i < array_length(options); i++) {
            var _oy = menu_y + menu_height + (i * menu_height);
            if (point_in_rectangle(_touch_x, _touch_y, menu_x, _oy, menu_x + menu_width, _oy + menu_height)) {
                selected_index = i;
                open = false;
                _clicked_option = true;
                break;
            }
        }
        if (!_clicked_option) {
            open = false;
        }
    }
}

if (room != room_easy) {
    switch (obj_drop.selected_index) {
        case 0:
            global.mode = "easy";
            obj_drop.selected_index = -1;
            room_goto(room_easy);
            break;
            
        case 1:
            global.mode = "normal";
            obj_drop.selected_index = -1;
            room_goto(room_easy);
            break;
			
        case 2:
            global.mode = "hard";
            obj_drop.selected_index = -1;
            room_goto(room_easy);
            break;
		
        case 3:
            global.mode = "impossible";
            obj_drop.selected_index = -1;
            room_goto(room_easy);
            break;
    }
} else {
    obj_drop.selected_index = -1;
}

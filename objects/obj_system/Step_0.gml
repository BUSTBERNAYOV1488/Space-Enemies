var _keys_list = variable_struct_get_names(global.achievements);
keys = array_length(_keys_list);
var _w = 800;
var _h = 160;
var _sep = 20;
var _sx = (display_get_gui_width() - _w) / 2;
var _sy = 100;
var _view_h = display_get_gui_height() - 200;

content = keys * (_h + _sep);
OKAK = min(0, _view_h - content);

var _bar_x1 = _sx + _w + 10;
var _bar_x2 = _sx + _w + 30;
var _bar_h = (_view_h / content) * _view_h;
var _bar_y = _sy + (-scroll_y / content) * _view_h;

if (mouse_check_button_pressed(mb_left)) {
    if (mouse_x >= _bar_x1 && mouse_x <= _bar_x2 && mouse_y >= _bar_y && mouse_y <= _bar_y + _bar_h) {
        is_dragging_bar = true;
    } else {
        is_dragging = true;
        drag_start_y = mouse_y - scroll_y;
    }
}

if (mouse_check_button(mb_left)) {
    if (is_dragging_bar) {
        var _perc = (mouse_y - _sy) / _view_h;
        scroll_y = -(_perc * content) + (_view_h / 2);
    } else if (is_dragging) {
        scroll_y = mouse_y - drag_start_y;
    }
}

if (mouse_check_button_released(mb_left)) {
    is_dragging = false;
    is_dragging_bar = false;
}

if (mouse_wheel_up()) scroll_y += 40;
if (mouse_wheel_down()) scroll_y -= 40;

scroll_y = clamp(scroll_y, OKAK, 0);

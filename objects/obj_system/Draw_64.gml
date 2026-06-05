var _keys = variable_struct_get_names(global.achievements);
var _w = 800;
var _h = 160;
var _sep = 20;
var _sx = (display_get_gui_width() - _w) / 2;
var _sy = 100;
var _view_h = display_get_gui_height() - 200;

for (var i = 0; i < array_length(_keys); i++) {
    var _data = global.achievements[$ _keys[i]];
    var _yy = _sy + scroll_y + (i * (_h + _sep));

    if (_yy + _h > _sy && _yy < _sy + _view_h) {
        draw_set_color(c_maroon);
        draw_roundrect_ext(_sx, _yy, _sx + _w, _yy + _h, 20, 20, false);
        draw_set_color(c_yellow);
        draw_roundrect_ext(_sx, _yy, _sx + _w, _yy + _h, 20, 20, true);

        draw_set_halign(fa_center);
        draw_text_transformed(_sx + (_w / 2), _yy + 20, _data.name, 1.5, 1.5, 0);
        draw_set_halign(fa_left);

        var _col = _data.earned ? c_lime : c_orange;
        draw_set_color(_col);
        draw_text(_sx + 30, _yy + 65, _data.earned ? "СТАТУС: ПОЛУЧЕНО" : "СТАТУС: НЕ ПОЛУЧЕНО");

        draw_set_color(c_white);
        draw_text_ext(_sx + 30, _yy + 95, _data.desc, 25, _w - 60);
    }
}

if (OKAK < 0) {
    var _bar_h = (_view_h / content) * _view_h;
    var _bar_y = _sy + (-scroll_y / content) * _view_h;
    draw_set_color(c_yellow);
    draw_rectangle(_sx + _w + 10, _bar_y, _sx + _w + 30, _bar_y + _bar_h, false);
}
draw_set_color(c_white);

var _radius = 150;
var _max_damage = 90;
var _list = ds_list_create();
var _num = collision_circle_list(x, y, _radius, obj_mainchara, false, true, _list, false);

if (_num > 0) {
    for (var i = 0; i < _num; i++) {
        var _target = _list[| i];
        if (!instance_exists(_target)) continue;

        var _dist = point_distance(x, y, _target.x, _target.y);
        var _damage_factor = clamp(1 - (_dist / _radius), 0, 1);
        var _final_damage = _max_damage * _damage_factor;

        try {
            if (_final_damage > global.defendhealther) {
                var _diff = _final_damage - global.defendhealther;
                global.defendhealther = 0;
                global.healther -= _diff;
            } else {
                global.defendhealther -= _final_damage;
            }
        }
        catch (_ex) {
            show_debug_message("Ошибка в расчете урона: " + string(_ex.message));
            global.healther -= _final_damage;
        }
    }
}
ds_list_destroy(_list);

effect_create_above(ef_explosion, x, y, 2, c_orange);
instance_destroy();

var _radius = 500;
var _max_damage = 5;
var _list = ds_list_create();
var _num = collision_circle_list(x, y, _radius, obj_mainchara, false, true, _list, false);

if (_num > 0) {
    for (var i = 0; i < _num; i++) {
        var _target = _list[| i];
        if (!instance_exists(_target)) continue;

        var _dist = point_distance(x, y, _target.x, _target.y);
        var _damage_factor = clamp(1 - (_dist / _radius), 0, 1);
        var _final_damage = _max_damage * _damage_factor;
		
		global.VCH = _final_damage
		instance_create_layer(obj_mainchara.x, obj_mainchara.y, "Effect", obj_flashbang_effect);
	}
}
ds_list_destroy(_list);

effect_create_above(ef_explosion, x, y, 2, c_white);
instance_destroy();

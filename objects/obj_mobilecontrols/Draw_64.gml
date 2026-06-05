var _button_scale = lerp(1, 3, button_scale);
var _analog_scale = lerp(1, 4, analog_scale);
var _controls_opacity = lerp(0.1, 1, controls_opacity);
draw_sprite_ext(spr_z_button, keyboard_check(ord("Z")), zx, zy, _button_scale, _button_scale, 0, c_white, image_aplha);
draw_sprite_ext(spr_joybase, joystick_type, analog_posx, analog_posy, _analog_scale, _analog_scale, 0, c_white, image_aplha);
draw_sprite_ext(spr_joystick, joystick_type, analog_center_x, analog_center_y, _analog_scale, _analog_scale, 0, c_white, image_aplha);


if keyboard_check(vk_f3) {
draw_text(mouse_x, 0, mouse_x);
draw_text(0, mouse_y, mouse_y);
} else exit
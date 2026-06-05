try {

var dist = point_distance(x, y, obj_mainchara.x, obj_mainchara.y);
var input_x = 0;
var input_y = 0;
dist1 = dist
healther = clamp(healther, 0, 100)
if healther <= 0 {
try {
effect_create_below(ef_explosion, x, y, 0.5, c_lime)
} catch (ex_) {
	show_debug_message("Частицу не удалось создать")
}
instance_destroy()
}

if (dist > 100) {
    var dir = point_direction(x, y, obj_mainchara.x, obj_mainchara.y);
    input_x = lengthdir_x(1, dir);
    input_y = lengthdir_y(1, dir);
}

try {
image_angle = point_direction(x, y, obj_mainchara.x, obj_mainchara.y);
}
catch (_ex) {
show_debug_message("Создан")
}

if (place_meeting(x, y, obj_mainchara)) {
    vel_x += obj_mainchara.vel_x * 0.5; 
    vel_y += obj_mainchara.vel_y * 0.5;
}

var other_guy = instance_place(x, y, obj_health);
if (other_guy != noone) {
    var push_dir = point_direction(other_guy.x, other_guy.y, x, y);
    vel_x += lengthdir_x(0.5, push_dir);
    vel_y += lengthdir_y(0.5, push_dir);
}

var input_magnitude = sqrt(input_x * input_x + input_y * input_y);
if (input_magnitude > 0) {
    input_x /= input_magnitude;
    input_y /= input_magnitude;
}

vel_x = clamp(vel_x + input_x * accel, -current_vel, current_vel);
vel_y = clamp(vel_y + input_y * accel, -current_vel, current_vel);

vel_x *= (1 - friction);
vel_y *= (1 - friction);

if (!place_meeting(x + vel_x, y, obj_mainchara)) x += vel_x;
if (!place_meeting(x, y + vel_y, obj_mainchara)) y += vel_y;

if (abs(vel_x) < 0.1) vel_x = 0;
if (abs(vel_y) < 0.1) vel_y = 0;

}
catch (_ex) {

}
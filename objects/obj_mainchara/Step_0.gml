var input_x = keyboard_check(vk_right) - keyboard_check(vk_left);
var input_y = keyboard_check(vk_down) - keyboard_check(vk_up);

var input_magnitude = sqrt(input_x * input_x + input_y * input_y);
if (input_magnitude > 0) {
    input_x /= input_magnitude;
    input_y /= input_magnitude;
}

vel_x = clamp(vel_x + input_x * accel, -current_vel, current_vel);
vel_y = clamp(vel_y + input_y * accel, -current_vel, current_vel);

vel_x *= (1 - friction);
vel_y *= (1 - friction);

var new_x = x + vel_x;
var new_y = y + vel_y;

x = new_x;
y = new_y;

if (abs(vel_x) < 0.1) vel_x = 0;
if (abs(vel_y) < 0.1) vel_y = 0;



if keyboard_check(ord("X")) or keyboard_check(vk_shift) {
	move_speed = 9
	stamina -= 1.93
} else {move_speed = 5
	stamina = stamina + 1.04}


timer -= 1;

if (timer <= 0 && (keyboard_check(ord("Z")) || keyboard_check(vk_enter))) {
    var bullet = instance_create_layer(x, y, "Instances", spawn_object);
    timer = delay_time * 60;
}

draw_x = x + recoil_x;
draw_y = y + recoil_y;
global.metal = clamp(global.metal, 0, 200)

if keyboard_check(ord("P")) {
	image_angle += 5
}
if keyboard_check(ord("O")) {
	image_angle -= 5
}
	if (invincible) {
	    invincible_timer -= 1;
	    if (invincible_timer mod 6 < 3) {
	        image_alpha = 0.5;
	    } else {
	        image_alpha = 1;
	    }
	    if (invincible_timer <= 0) {
	        invincible = false;
	        image_alpha = 1;
	    }
}

if global.healther <= -1 {
	room_goto(room_gameover)
}
if global.kills == 1 {
achievement_grant("kill_1")
}

if global.kills == 1 {
achievement_grant("kill_1")
}

if global.kills == 10 {
achievement_grant("kill_10")
}

if global.kills == 20 {
achievement_grant("kill_20")
}

if global.kills == 2500 {
achievement_grant("ULTRA_KILLER")
}

if timet == 60 {
achievement_grant("time_60")
}

if timet == 120 {
achievement_grant("time_120")
}

if timet == 180 {
achievement_grant("time_180")
}

if timet == 240 {
achievement_grant("time_bronza")
}

if timet == 420 {
achievement_grant("time_serebro")
}

if timet == 600 {
achievement_grant("time_gold")
}

if timet == 1200 {
achievement_grant("time_almas")
}

if instance_number(obj_health) == 3 {
achievement_grant("NEW_FRIENDS")
}

if keyboard_check(vk_shift) {
current_vel = stamina_vel	
} else { current_vel = max_vel
}


if global.kills = 200 {
instance_create_layer(x, y, "Instances", obj_gun);
}

if timer <= 0 and keyboard_check(ord("Z"))
{
    instance_create_layer(x, y, "Instances", spawn_object);
    timer = delay_time * 60
	exit
}

if global.defendhealther <= 1 {
image_index = 1;
}

global.healther = clamp(global.healther, -999, 100)
x = clamp(x, 31, 1366-31)
y = clamp(y, 27, 768-27)
stamina += 3
stamina = clamp(stamina, 5.21, 100)
if blind_intensity > 0
{
    blind_intensity -= 0.01;
    if blind_intensity < 0 blind_intensity = 0;
}
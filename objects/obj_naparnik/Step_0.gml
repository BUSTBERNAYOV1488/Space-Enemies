try {
image_angle = point_direction(x, y, obj_enemies.x, obj_enemies.y);
}
catch (_ex) {
exit;
}
timer -= 1;
charge = clamp(charge, 0, 100)
if keyboard_check_pressed(ord("L")) {
if activated == false {
	activated = true
} else {
activated = false
alarm[0] = 60
}
}
if (timer <= 0) and activated = true {
	if !(charge <= 10) {
    instance_create_layer(x, y, "Instances", obj_bullet_1);
    timer = 2 * 60;
	charge -= 3
	exit
	}
}
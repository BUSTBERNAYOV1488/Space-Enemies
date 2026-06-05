td =- 1

if (td <= 0) and keyboard_check_pressed(ord("X")) {
    instance_create_layer(x, y, "Instances", obj_bulletgun);
    td = d * 60;
	exit
}
x = obj_mainchara.x + 5
y = obj_mainchara.y - 20
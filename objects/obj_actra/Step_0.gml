if command = 1 {
timern -= 1;

if (timern <= 0) {
    instance_create_layer(x, y, "Instances", spawn_objectn);
    timern = delay_timen * 60;
	exit
}
}
if command = 2 {
alarm[0] = 60
exit
}
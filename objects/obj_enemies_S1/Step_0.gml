direction = image_angle;
image_angle = point_direction(x, y, obj_mainchara.x, obj_mainchara.y);
if healther <= 5 {
image_index = 1
} else image_index = 0
if healther <= 0 {
global.kills++
instance_destroy()
exit
}
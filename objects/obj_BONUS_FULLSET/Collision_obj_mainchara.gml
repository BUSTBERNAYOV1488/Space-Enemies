if global.healther <= 10 {
	achievement_grant("LIFE_MY_NAME")
}
global.healther = 100
global.defendhealther = 70
obj_mainchara.image_index = 1
instance_destroy()
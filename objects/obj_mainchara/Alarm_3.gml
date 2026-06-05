if global.defendhealther >= 0 {
	global.healther += random_range(1, 3)
} else { if global.defendhealther <= 0 { global.healther -= 1
}
}
alarm[3] = 120*2
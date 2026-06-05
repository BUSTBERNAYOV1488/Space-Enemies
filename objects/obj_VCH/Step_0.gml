fade_speed = 0.03 + (flash_power * 0.02)
image_alpha -= fade_speed

if (image_alpha <= 0) {
	instance_destroy()
}
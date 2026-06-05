global.VCH = 2
flash_power = global.VCH

flash_power = clamp(flash_power, 0.1, 2)

image_alpha = flash_power
image_xscale = 1 + flash_power
image_yscale = 1 + flash_power

if (flash_power <= 0.05) {
	instance_destroy()
}
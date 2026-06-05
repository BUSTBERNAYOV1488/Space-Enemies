try {
effect_create_below(ef_explosion, x, y, 1, c_red)
} catch (ex_) {
	show_debug_message("Частицу не удалось создать")
}
global.kills++
instance_destroy()
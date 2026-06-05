if selected > 1 {
selected = 0
}
if selected < 0 {
selected = 1
}
if window_get_fullscreen() {
proverkaf = "Включено"
} else {
	proverkaf = "Выключено"
}
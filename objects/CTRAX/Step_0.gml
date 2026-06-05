XTRAX = random_range(0, 500000)
if XTRAX >= 499999 {
	audio_play_sound(SOUND, 0, 0, 1.0, undefined, 1.0);
}
show_debug_message(XTRAX)
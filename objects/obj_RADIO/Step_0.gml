if keyboard_check_pressed(ord("M")) {
	image_alpha = 1
	image_index = 0
	audio_play_sound(ct_backup, 0, 0, 1.0, undefined, 1.0);
	alarm[0] = 60*2
} 
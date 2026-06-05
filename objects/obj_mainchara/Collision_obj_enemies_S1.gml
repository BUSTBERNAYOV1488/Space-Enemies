//if !invincible {
if image_index == 1 and global.defendhealther >= 0 {
	global.defendhealther -= 3
} else global.healther -= 3
//    invincible = true;
//    invincible_timer = 60;
audio_play_sound(snd_hurt, 0, 0, 1.0, undefined, 1.0);
//}
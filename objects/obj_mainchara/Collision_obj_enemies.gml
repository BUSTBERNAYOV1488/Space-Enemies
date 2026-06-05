//if !invincible {
try {
if image_index == 1 and global.defendhealther >= 0 {
	global.defendhealther -= 2*obj_enemies.speed
} else global.healther -= 1.5*obj_enemies.speed
//    invincible = true;
//    invincible_timer = 60;
audio_play_sound(snd_hurt, 0, 0, 1.0, undefined, 1.0);
//}
}
catch (_ex) {
exit
}
if image_index == 1 and global.defendhealther >= 0 {
global.defendhealther -= 7
} else { global.healther -= 15
}
audio_play_sound(snd_hurt, 0, 0, 1.0, undefined, 1.0);
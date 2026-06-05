if (!invincible) {
    global.healther -= 15;
    invincible = true;
    invincible_timer = 0;
    image_angle = 0.5;
audio_play_sound(snd_hurt, 0, 0, 1.0, undefined, 1.0);
}

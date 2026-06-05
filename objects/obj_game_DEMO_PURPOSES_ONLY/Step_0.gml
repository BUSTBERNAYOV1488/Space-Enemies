if keyboard_check_pressed(vk_escape) game_end();
if keyboard_check_pressed(ord("R")) || gamepad_button_check_pressed(0,gp_shoulderr) || gamepad_button_check_pressed(0,gp_shoulderrb) game_restart();



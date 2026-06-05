/// @description INPUTS, ETC.

//Disable input if we are fading in/out
if instance_exists(obj_fade) exit

//Helper keys for restarting and exiting
if keyboard_check_pressed(vk_escape) game_end();
if keyboard_check_pressed(ord("R")) || gamepad_button_check_pressed(0,gp_shoulderr) || gamepad_button_check_pressed(0,gp_shoulderrb) game_restart();

//Determine inputs
var y_select = 0;
if y_released { //If gamepad joystick has been returned to center position
       //Take the maximum value of all inputs (arrows, WASD, joystick) and return and save that value (-1,0 or +1) 
       y_select -= max(keyboard_check_pressed(vk_up),keyboard_check_pressed(ord("W")),gamepad_axis_value(0,gp_axislv) <= -.5);
       y_select += max(keyboard_check_pressed(vk_down),keyboard_check_pressed(ord("S")),gamepad_axis_value(0,gp_axislv) >= .5);
       //If using a gamepad, register if we've moved the joystick
       if abs(gamepad_axis_value(0,gp_axislv)) >= .5 y_released = false;
}
//If the joystick has been returned to the center position and we haven't registered that yet, do so
else if abs(gamepad_axis_value(0,gp_axislv)) < .5 y_released = true
//If we're changing which option is currently selected
if y_select!=0 {
   audio_play_sound(sfx_switch,10,false); 
   y_pos += y_select; //Move the selector in the direction of the input
   if (y_pos < 0) y_pos = options; //If we're at the top of the list going up, go to the last option
   if (y_pos > options) y_pos = 0; //If we're at the end of the list going down, go to the first option
}

//If any of the buttons (enter, shift, space, or gamepad lower button) are pressed, select the highlighted option
selected = max(keyboard_check_released(vk_enter),keyboard_check_released(vk_shift), keyboard_check_released(vk_space),gamepad_button_check_pressed(0,gp_face1), 0);
if (selected==1) {
   scr_main_menu(); //Run the main menu script, which controls what each option does
   //***************Comment out/delete the following line of code plus the word "else" if you decide not to use CONTINUE as an option
   if (y_pos == 0  && !file_exists("Save.sav")) audio_play_sound(sfx_error,10,0);
   else audio_play_sound(sfx_select,10,false);
}

/* */
/*  */

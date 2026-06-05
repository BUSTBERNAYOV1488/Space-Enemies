/// @description MODIFY THE MENU HERE

//*********************PLAY WITH THESE VARIABLES*****************
//To change what each option DOES, modify the script scr_main_menu

//Title
//(current window size is 1920*1080)
title_x = room_width/2; //X coordinate for the top left corner of where the title will appear
title_y = room_height/4; //Y coordinate for the top left corner of where the title will appear
title = "AWESOME TITLE"; //The text to display
title_font = fnt_title; //The font of the title. Modify this in the project hierarchy on the left under the Fonts folder.
title_color = c_white; //The color of the title
title_halign = fa_center //Title horizontal alignment 
title_valign = fa_top;//Title vertical alignment

//Menu Options
//(current window size is 1920*1080)
x=  800; //X coordinate for the top left corner of where the menu options will appear
y = 420; //Y coordinate for the top left corner of where the menu options will appearoptions_font = fnt_options; //The font of the menu options
options_font = fnt_options; //The font of the menu options. Modify this in the project hierarchy on the left under the Fonts folder.
selected_color = c_white; //The color of the options text when selected
not_selected_color = c_ltgray; //The color of the options text when not selected
grayed_out_color = c_dkgray; //The color of the options text when not available
options_halign = fa_left; //Options horizontal alignment (keep this left unless you plan on turning off the line/arrow indicators)
text_spacing = 20; //How far apart the options are, in pixels

//Text for Menu Options
//***************If you decide not to use CONTINUE as an option, go to the STEP and DRAW GUI functions of this object and comment out the lines indicated with asterisks ********
main_menu[0] = "CONTINUE"
main_menu[1] = "NEW GAME"
main_menu[2] = "CREDITS";
main_menu[3] = "QUIT";
//main_menu[4] = "DO A BARREL ROLL"
//Other options, like if you want to have multiple save files, a bestiary, etc.

//Line (beneath currently selected option)
line_weight = 4; //Thickness of the line, in pixels
line_spacing = 0; //How far the line is below the text. (-) to get closer to the text, (+) to get farther away
line_color = c_white; //The color of the line underlining selected options
display_line = false; //Whether or not to display the line underneath the selected option

//Arrow (to the left of the currently selected option)
arrow_color = c_white; //The image blend color for the arrow sprite
arrow_sprite = sp_arrow; //The arrow sprite to use
arrow_gap = 30; //Distance between arrow and text option
display_arrow = true; //Whether or not to display the arrow

//Transition Properties
transit_color = c_black; //Color of the transition mask
transit_time = 0.7; //Time for the transition to fade in and out in seconds (positive values only!)


//************DON'T PLAY WITH THESE VARIABLES, OR DO SO AT YOUR OWN RISK :) **************
//Utility Variables
selected = 0;
y_released = true;
options = array_length_1d(main_menu)-1; //Counts the number of options
draw_set_font(options_font); //The desired font of the menu options, used for spacing calculations
font_height = string_height(string_hash_to_newline(main_menu[0])); //Gets the height of your selected font
spacing = font_height + text_spacing; //Overall spacing between the tops of the lines of text
//

//If there's a save file, sets the default position to "Continue." Otherwise, sets it to "New Game."
//*******************Comment out or delete until the word "else" if you get rid of the CONTINUE option.
if !file_exists("save.ini") {
   y_pos = 1;
}
else y_pos = 0;

/* */
/*  */

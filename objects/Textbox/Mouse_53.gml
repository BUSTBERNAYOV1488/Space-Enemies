/// @description Set the textbox to no longer have focus if the mouse is not clicking on it

// Check if the mouse has been pressed over a Textbox (function returned the instance ID of the Textbox that was clicked,
// or noone if no Textbox was under the mouse position)
var _instance_id = collision_point(mouse_x, mouse_y, Textbox, false, false);

// If the instance ID matches this Textbox, and this textbox has focus
if (!(_instance_id == self.id))
{
    if (hasFocus)
    {
        hasFocus = false;
    
        // Clear the value of keyboard_string
        keyboard_string = "";
    }
}
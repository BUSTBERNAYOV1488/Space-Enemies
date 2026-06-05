hasFocus = false;

w2 = sprite_width/2;
h2 = sprite_height/2;

bounds = {
    left:   x - w2 + horizontal_padding,
    center: x,
    right:  x + w2 - horizontal_padding,
    top:    y - h2 + vertical_padding,
    middle: y,
    bottom: y + h2 - vertical_padding
}

text_start_x_offset = 5;
text_box_width = bounds.right - bounds.left;
text_box_height = bounds.bottom - bounds.top

display_string = "";
prevStringLength = 0;

// Setup text alignment based on the overflow_behaviour values
text_h_align = fa_left;
text_v_align = fa_middle;

// Create the Text Element that we will be using to show our text
text_element = layer_text_create(layer, bounds.left, bounds.top, font, display_string);


if (overflow_behaviour == "wrap")
{
    text_v_align = fa_top;
    layer_text_wrap(text_element, true);
} else if (overflow_behaviour == "scroll")
{
    text_v_align = fa_middle;
    layer_text_wrap(text_element, false);
    layer_text_y(text_element, bounds.middle - text_size);
}

layer_text_halign(text_element, text_h_align);
layer_text_valign(text_element, text_v_align);

var _font_size = font_get_size(font);
var _scale = text_size/_font_size;
layer_text_xscale(text_element, _scale);
layer_text_yscale(text_element, _scale);

layer_text_framew(text_element, text_box_width);
layer_text_frameh(text_element, text_box_height);

layer_text_blend(text_element, text_colour);
layer_text_linespacing(text_element, line_separation);

draw_set_font(font)
caret_width = string_width("|")*_scale;

// Ensure that the string that is passed is of the type we are expecting
// This implementation relies on the potentially incorrect characters being at the end of the string
// as it will remove the last character of a string until it matches with our expected input type
function ParseInput(_input_string)
{
    // If the string is empty, just return
    if (string_length(_input_string) == 0) return;
        
    switch (expected_input)
    {
        case "all":
            return _input_string;
        
        break;
        
        case "int":
            // Get values for the string length and the length of the string only counting numbers
            var _string_length = string_length(_input_string);
            var _string_length_digits = string_length(string_digits(_input_string));
        
            // While the string contains characters that are not numbers
            while (_string_length != _string_length_digits)
            {
                // Remove the last character from the string
                _input_string = string_delete(_input_string, _string_length, 1)
            
                // Update the values for the string length and the length of the string only counting numbers
                _string_length = string_length(_input_string);
                _string_length_digits = string_length(string_digits(_input_string));
            }
            return string(_input_string)
        break;
        
        case "real":
            // Get values for the string length and the length of the string only counting numbers
            var _string_length = string_length(_input_string);
            var _string_length_digits = string_length(string_digits(_input_string));
        
            // Get booleans for whether the string includes a starting minus or a decimal point anywhere
            var _contains_minus = string_char_at(_input_string, 1) == "-";
            var _contains_decimal_point = string_pos(".", _input_string) != 0;
        
            // Loop through the string if the format does not match expectation
            while (_string_length_digits != (_string_length - _contains_minus - _contains_decimal_point))
            {
                // Remove the last character from the string
                _input_string = string_delete(_input_string, _string_length, 1)
            
                // Update the values that will be used to decide if the while loop should continue
                _string_length = string_length(_input_string);
                _string_length_digits = string_length(string_digits(_input_string));
        
                _contains_minus = string_char_at(_input_string, 1) == "-";
                _contains_decimal_point = string_pos(".", _input_string) != 0;
            }
            return string(_input_string)
        break;
    }
}

/// @desc This function returns the alpha part of the given colour, with the value being between 0 and 255, where 0 is completely transparent and 255 is completely opaque. If an alpha is not present (for example, in a constant like c_red) then the value 0 will be returned.
/// @param {Real} _colour the colour to check
/// @returns {Real} Alpha value (0 - 255)
function colour_get_alpha(_colour)
{
    // For more information on the code in this function, you can go to the Bitwise Operators page of the manual
    // https://manual.gamemaker.io/monthly/en/#t=Additional_Information%2FBitwise_Operators.htm
    
    // The colour value is made of 4 sets of 8 bits to represent Alpha, Blue, Green, Red where 00000000 = 0 and 11111111 = 255
    // For this example, we will use the following value #7EE8AA2F
    // Alpha    Blue     Green    Red
    // 126      232      170      47
    // 01111110 11101000 10101010 00101111
    
    // Using the 'right shift operator' on the above example, we can move the Alpha bits down, so that the value becomes only the Alpha
    // As an example, below we move the bits right by 8, 16, and then 24
    // Alpha    Blue     Green    Red
    // 01111110 11101000 10101010 00101111 (original value)
    // 00000000 01111110 11101000 10101010 (original value >> 8)
    // 00000000 00000000 01111110 11101000 (original value >> 16)
    // 00000000 00000000 00000000 01111110 (original value >> 24)
    
    return _colour >> 24;
}
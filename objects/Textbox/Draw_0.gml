/// @description Draw the text box and its contents, with the chosen highlight colour if the textbox has focus

draw_self();

var _scale = layer_text_get_xscale(text_element);

var _stringToRender = display_string;

draw_set_font(font);

// If the textbox has focus and the caret should be visible then its width should be accounted for
var _caret_width = hasFocus*caret_visible*caret_width;

if (overflow_behaviour == "scroll")
{
    // ensure that the text doesn't overflow the box by removing characters from the start of the string that we are showing
    while (string_width(_stringToRender)*_scale + _caret_width >= text_box_width)
    {
        _stringToRender = string_delete(_stringToRender, 0, 1);
    }
}

if (hasFocus) 
{
    // Draw the focus highlight colour
    var _currAlpha = draw_get_alpha()
    
    // Get the alpha value from the highlight colour
    var _highlight_alpha = colour_get_alpha(highlight_colour);
    draw_set_alpha(_highlight_alpha/255);
    draw_rectangle_color(bounds.left, bounds.top, bounds.right, bounds.bottom, highlight_colour, highlight_colour, highlight_colour, highlight_colour,false);
    draw_set_alpha(_currAlpha);
    
    if (caret_visible)
    {
        _stringToRender += "|"
    }
}

layer_text_text(text_element, _stringToRender);


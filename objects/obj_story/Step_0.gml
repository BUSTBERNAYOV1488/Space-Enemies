if (text_current_length < string_length(text_full)) {
    text_current_length += text_speed;
}

if (keyboard_check_pressed(ord("Z"))) {
    if (text_current_length < string_length(text_full)) {
        text_current_length = string_length(text_full);
    } 
    else if (current_message < array_length(messages) - 1) {
        current_message++;
        text_full = messages[current_message].text;
        current_frame = messages[current_message].frame;
        text_current_length = 0;
    } 
    else {
        room_goto_next();
    }
}
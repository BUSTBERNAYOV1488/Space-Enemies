if (show_dialog) {
    if (char_index < string_length(dialog[current_line])) {
        timer++;
        if (timer >= speed) {
            timer = 0;
            current_text += string_char_at(dialog[current_line], char_index + 1);
            char_index++;
        }
    }

    if (keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter)) {
        if (char_index < string_length(dialog[current_line])) {
            current_text = dialog[current_line];
            char_index = string_length(dialog[current_line]);
        } else {
            if (current_line < array_length(dialog) - 1) {
                current_line++;
                current_text = "";
                char_index = 0;
            } else {
                show_dialog = false;
            }
        }
    }
}
draw_set_color(c_white)
if (show_dialog) {
    draw_text(1366/2, 100, current_text);
    
    if (char_index >= string_length(dialog[current_line])) {
        if (current_line < array_length(dialog) - 1) {
            draw_text(1366/2, 130, "Нажми Z для продолжения");
        }
	}
}
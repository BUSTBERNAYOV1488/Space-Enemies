switch (selected) {
    case 0:
	    if window_get_fullscreen() {
        window_set_fullscreen(false);
    } else {
        window_set_fullscreen(true);
    }
	break;
	
	case 1:
	room_goto(room_new_menu_1)
	break;
}
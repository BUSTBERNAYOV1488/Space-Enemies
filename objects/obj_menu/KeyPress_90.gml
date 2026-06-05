switch (selected) {
    case 0:
		sys1 = random_range(0, 9999)
		if sys1 == 9999 {
		room_goto(room_ITYOU)	
		} else {
			 room_goto(room_game)
		}
        break;
	
	case 1:
	room_goto(room_game)
	global.saving = true
	game_load("save.dat")
	break;
	
	case 2:
	room_goto(room_bio)
	break;
	
	case 3:
	room_goto(room_settings)
	break;
	
	case 4:
	room_goto(root_achiments)
	break;
	
	case 5:
	game_end()
	break;
    default:
        break;
}
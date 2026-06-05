switch (selected) {
    case 0:
        room_goto(room_new_menu_1)
        break;
		
	case 1:
	var save_data = { "skin":"1"}
	var json_save_data = json_stringify(save_data)
	var savedataflie = file_text_open_write("save_data.json")
	file_text_write_string(savedataflie, json_save_data)
	file_text_close(savedataflie)
	room_goto(room_new_menu_1)
	break
	
	case 2:
	 save_data = { "skin":"2"}
	 json_save_data = json_stringify(save_data)
	 savedataflie = file_text_open_write("save_data.json")
	file_text_write_string(savedataflie, json_save_data)
	file_text_close(savedataflie)
	room_goto(room_new_menu_1)
	break
	
	case 3:
	 save_data = { "skin":"3"}
	 json_save_data = json_stringify(save_data)
	 savedataflie = file_text_open_write("save_data.json")
	file_text_write_string(savedataflie, json_save_data)
	file_text_close(savedataflie)
	room_goto(room_new_menu_1)
	break
	
	case 4:
	save_data = { "skin":"4"}
	json_save_data = json_stringify(save_data)
	savedataflie = file_text_open_write("save_data.json")
	file_text_write_string(savedataflie, json_save_data)
	file_text_close(savedataflie)
	room_goto(room_new_menu_1)
	break
	
	case 5:
	save_data = { "skin":"5"}
	json_save_data = json_stringify(save_data)
	savedataflie = file_text_open_write("save_data.json")
	file_text_write_string(savedataflie, json_save_data)
	file_text_close(savedataflie)
	room_goto(room_new_menu_1)
	break
}
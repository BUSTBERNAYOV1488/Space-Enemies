with (zui_main()) {
	var window_id;
 
	with (zui_create(zui_get_width() * 0.5, zui_get_height() * 0.5, objPopupWindow, -1)) {
		window_id = id;
	}
}
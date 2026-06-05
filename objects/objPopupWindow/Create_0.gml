zui_set_size(400, 216);

test_callback = function (_id) {
	ui_show_popup(string(_id));
}

with (zui_create(0, 0, objUIWindowCaption)) {
	caption = "Всплывающее окно";
	draggable = 1;
}

callbackEXIT = function () {
	instance_destroy()
}

callbackEXITReturn = function () {
	instance_destroy();
	return "ready"
}

with (zui_create(400-32, 0, objUIButton)) {
	zui_set_anchor(0, 0);
	zui_set_size(32, 32);

	caption = "X";
	callback = other.callbackEXIT;
}

with (zui_create(268, 38, objUIButton)) {
	zui_set_anchor(0, 0);
	zui_set_size(120, 32);

	caption = "Ок";
	callback = other.callbackEXITReturn;
}

with (zui_create(12, 170, objUICheckbox)) {
	zui_set_anchor(0, 0);
}

with (zui_create(36, 170, objUICheckbox)) {
	zui_set_anchor(0, 0);
	value = 1;
}

with (zui_create(zui_get_width() * 0.5, zui_get_height() - 16, objUILabel)) {
	other.position_label = id;
}

if keyboard_check_pressed(vk_f4) {
    if window_get_fullscreen() {
        window_set_fullscreen(false);
    } else {
        window_set_fullscreen(true);
    }
}

if(os_browser != browser_not_a_browser)
{
	window_set_size(browser_width, browser_height);
}
if (keyboard_check_pressed(vk_f3)){
	screen_save(get_save_filename("Сохранить скриншот (.png) | *.png",$"Скриншот Space Enemies-{current_month}-{current_day}-{current_year}-{current_hour}{current_minute}-{current_second}"));
}

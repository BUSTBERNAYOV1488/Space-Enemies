exception_unhandled_handler(function(ex) {
    var _err_msg = string(ex.message);
    var _stack = string(ex.stacktrace);
    var _full_text = "Критическая ошибка!\n\nСообщение: " + _err_msg + "\n\nСтек:\n" + _stack;

    var _f = file_text_open_write("crash_log.txt");
    if (_f != -1) {
        file_text_write_string(_f, "Space Enemies Crash Log\n");
        file_text_write_string(_f, "Дата: " + date_datetime_string(date_current_datetime()) + "\n");
        file_text_write_string(_f, _full_text);
        file_text_close(_f);
    }
    show_message(_full_text);
    return 0;
});
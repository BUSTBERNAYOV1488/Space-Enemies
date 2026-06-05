function simple_dialog(_dialog_table, _x, _y) {
    var dialog = {
        table: _dialog_table,
        x: _x,
        y: _y,
        current_line: 0,
        max_lines: array_length(_dialog_table)
    };
    return dialog;
}

function simple_dialog_draw(_dialog) {
    if (_dialog.current_line < _dialog.max_lines) {
        // Просто рисуем текущую строку из таблицы
        draw_text(_dialog.x, _dialog.y, _dialog.table[_dialog.current_line]);
        
        // Подсказка для продолжения
        draw_text(_dialog.x, _dialog.y + 30, "Нажми ПРОБЕЛ для продолжения");
    }
}

function simple_dialog_next(_dialog) {
    if (_dialog.current_line < _dialog.max_lines - 1) {
        _dialog.current_line++;
        return true;
    } else {
        return false; // Диалог закончен
    }
}

function simple_dialog_is_finished(_dialog) {
    return _dialog.current_line >= _dialog.max_lines - 1;
}

function simple_dialog_reset(_dialog) {
    _dialog.current_line = 0;
}
function achievements_init() {
	global.achievements = {
    game_running: { 
        name: "ПЕРВЫЙ ШАГ", 
        desc: "Вы запустили игру", 
        earned: false 
    },
		kill_1: { 
        name: "ПЕРВОЕ УБИЙСТВО", 
        desc: "Для этого достижения нужно совершить\nпервое убийство", 
        earned: false 
    },
		kill_10: { 
        name: "10 КИЛЛОВ!!", 
        desc: "Для этого достижения нужно \nсовершить 10 киллов!", 
        earned: false 
    },
		kill_20: { 
        name: "20 КИЛЛОВ!!", 
        desc: "Для этого достижения нужно\n совершить 20 киллов!", 
        earned: false 
    },
		time_60: { 
        name: "60 СЕКУНД!!!", 
        desc: "Для этого достижения \nнужно простоять 60 секунд!", 
        earned: false 
    },
		time_120: { 
        name: "120 СЕКУНД!!!", 
        desc: "Для этого достижения \nнужно простоять 120 секунд!", 
        earned: false 
    },
		time_180: { 
        name: "180 СЕКУНД!!!", 
        desc: "Для этого достижения \nнужно простоять 180 секунд!", 
        earned: false 
    },
		time_bronza: { 
        name: "БРОНЗА!", 
        desc: "Для этого достижения нужно\n простоять 240 секунд и получить бронзу!", 
        earned: false 
    },
		time_serebro: { 
        name: "Серебро!", 
        desc: "Для этого достижения нужно\n простоять 420 секунд и получить серебро!", 
        earned: false 
    },
		time_gold: { 
        name: "Золото!", 
        desc: "Для этого достижения нужно\n простоять 600 секунд и получить золото!", 
        earned: false 
    },
		time_almas: { 
        name: "Алмаз!", 
        desc: "Для этого достижения нужно\n простоять 1200 секунд", 
        earned: false 
    },
		ULTRA_KILLER: { 
        name: "Серийный убийца!", 
        desc: "Для этого достижения нужно\n убить 2500 врагов", 
        earned: false 
    },
		LIFE_MY_NAME: { 
        name: "С того самого света", 
        desc: "Вы успели взять бонус регенерации\nи выжить при 1-10 HP!", 
        earned: false 
    },
		NEW_FRIENDS: { 
        name: "Новые друзья!", 
        desc: "Вы сделали 3 лучика!", 
        earned: false 
    },
	
};
    achievements_load();
}

function achievements_save() {
    var _str = json_stringify(global.achievements);
    var _file = file_text_open_write("ach_data.json");
    file_text_write_string(_file, base64_encode(_str));
    file_text_close(_file);
}

function achievements_load() {
    if (file_exists("ach_data.json")) {
        var _file = file_text_open_read("ach_data.json");
        var _str = base64_decode(file_text_read_string(_file));
        file_text_close(_file);
        
        var _data = json_parse(_str);
        var _names = variable_struct_get_names(_data);
        for (var i = 0; i < array_length(_names); i++) {
            var _key = _names[i];
            if (variable_struct_exists(global.achievements, _key)) {
                global.achievements[$ _key].earned = _data[$ _key].earned;
            }
        }
    }
}

function achievement_grant(_id) {
    if (variable_struct_exists(global.achievements, _id)) {
        var _a = global.achievements[$ _id];
        
        if (!_a.earned) {
            _a.earned = true;
            achievements_save(); 
            
            var _pop = instance_create_depth(0, 0, -10000, obj_achievement_popup);
            _pop.text_title = string_upper(_a.name);
            _pop.text_desc = _a.desc;
        }
    }
}

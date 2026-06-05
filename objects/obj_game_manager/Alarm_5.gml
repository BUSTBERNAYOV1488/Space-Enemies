if (variable_global_exists("room_message")) {
    
    switch (global.room_message) {
        case 0:
            obj_spawner_enemies.mode = "easy";
            break;
            
        case 1:
            obj_spawner_enemies.mode = "normal";
            break;
            
        case 2:
            obj_spawner_enemies.mode = "hard";
            break;
        
        case 3:
            obj_spawner_enemies.mode = "impossible";
            break;
    }
}

if (!variable_instance_exists(id, "state")) {
    state = "chase";          
    search_timer = 0;          
    last_known_x = x;          
    last_known_y = y;
    view_fov = 90;            
    view_dist = 400; 
    turn_speed = 4;       
    attack_dist = 40; 
    vel_x = 0;                 
    vel_y = 0;                 
    move_spd = 2;              
    max_spd = 3;             
    accel = 0.15;              
    friction_air = 0.08;       
    patrol_timer = 0;
    patrol_target_x = x;
    patrol_target_y = y;
    patrol_wait = 0;
}

if (instance_exists(obj_mainchara)) {
    var var_dist = point_distance(x, y, obj_mainchara.x, obj_mainchara.y);
    var var_dir_to_player = point_direction(x, y, obj_mainchara.x, obj_mainchara.y);
    var var_angle_diff = abs(angle_difference(image_angle, var_dir_to_player));
    var var_has_line_of_sight = false;
    
    if (global.enemy_fire_alert ?? false) {
        state = "fire";
        last_known_x = obj_mainchara.x;
        last_known_y = obj_mainchara.y;
    }
    
    if (state != "fire") {
        if (var_dist < 500 || (var_dist < view_dist && var_angle_diff <= view_fov * 0.5)) {
            var_has_line_of_sight = true;
        }
        
        if (var_has_line_of_sight) {
            state = "fire";
            global.enemy_fire_alert = true;
            last_known_x = obj_mainchara.x;
            last_known_y = obj_mainchara.y;
        } else if (state == "chase") {
            state = "search";
        }
    }
    
    var var_target_angle = image_angle;
    var var_target_spd = 0; 
    var var_should_orbit = false;
    
    if (state == "fire") {
        var_target_angle = var_dir_to_player;
        var_target_spd = max_spd * 1;
    }
    else if (state == "chase") {
        var_target_angle = var_dir_to_player;
        var_target_spd = (var_angle_diff < 20) ? max_spd : move_spd;
        if (var_dist < attack_dist) var_should_orbit = true;
    } 
    else if (state == "search") {
        var_target_angle = point_direction(x, y, last_known_x, last_known_y);
        var_target_spd = move_spd * 0.7; 
        if (point_distance(x, y, last_known_x, last_known_y) < 15 || search_timer <= 0) {
            state = "patrol";
            patrol_timer = 0;
            patrol_wait = 0;
        }
        search_timer--;
    } 
    else if (state == "patrol") {
        if (patrol_wait > 0) {
            patrol_wait--;
            var_target_spd = 0;
            var_target_angle = image_angle + sin(current_time * 0.004) * 0.8;
            if (patrol_wait <= 0) patrol_timer = 0;
        } else {
            if (patrol_timer <= 0 || point_distance(x, y, patrol_target_x, patrol_target_y) < 20) {
                var var_rand_dir = random(360);
                var var_rand_dist = random_range(120, 300);
                patrol_target_x = x + lengthdir_x(var_rand_dist, var_rand_dir);
                patrol_target_y = y + lengthdir_y(var_rand_dist, var_rand_dir);
                patrol_timer = irandom_range(120, 300);
                if (random(100) < 40 && (patrol_target_x != x)) {
                    patrol_wait = irandom_range(60, 150);
                }
            }
            if (patrol_target_x != x || patrol_target_y != y) {
                var_target_angle = point_direction(x, y, patrol_target_x, patrol_target_y);
                var_target_spd = move_spd * 0.5;
                patrol_timer--;
            } else {
                var_target_spd = 0;
                var_target_angle = image_angle + sin(current_time * 0.002) * 0.3;
            }
        }
    }

    image_angle += clamp(angle_difference(var_target_angle, image_angle), -turn_speed, turn_speed);
    direction = image_angle;
    
    var var_desired_vx = lengthdir_x(var_target_spd, image_angle);
    var_desired_vy = lengthdir_y(var_target_spd, image_angle);
    
    if (var_should_orbit && state != "fire") {
        var var_blend_factor = 1.0 - (var_dist / attack_dist);
        var_desired_vx = lerp(var_desired_vx, lengthdir_x(var_target_spd, var_dir_to_player + 90), var_blend_factor);
        var_desired_vy = lerp(var_desired_vy, lengthdir_y(var_target_spd, var_dir_to_player + 90), var_blend_factor);
    }
    
    vel_x = lerp(vel_x, var_desired_vx, accel);
    vel_y = lerp(vel_y, var_desired_vy, accel);
    
    if (var_target_spd == 0) {
        vel_x = lerp(vel_x, 0, friction_air);
        vel_y = lerp(vel_y, 0, friction_air);
    }
    
    x += vel_x;
    y += vel_y;
}

move_wrap(1, 1, 0);

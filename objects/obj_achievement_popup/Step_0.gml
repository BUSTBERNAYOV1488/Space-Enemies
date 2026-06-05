switch(state) {
    case 0:
        y_pos = lerp(y_pos, 20, 0.1);
        alpha = lerp(alpha, 1, 0.1);
        if (abs(y_pos - 20) < 0.5) state = 1;
    break;
    
    case 1:
        timer--;
        if (timer <= 0) state = 2;
    break;
    
    case 2:
        y_pos = lerp(y_pos, -70, 0.1);
        alpha = lerp(alpha, 0, 0.1);
        if (alpha < 0.05) instance_destroy();
    break;
}

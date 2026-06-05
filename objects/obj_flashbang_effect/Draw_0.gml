if blind_intensity > 0
{
    draw_set_color(c_white);
    draw_set_alpha(blind_intensity * 0.8);
    draw_rectangle(0, 0, 1366, 768, false);
    draw_set_alpha(1);
}
draw_set_color(c_white)
if blind_intensity > 0
{
    draw_set_color(c_white);
    draw_set_alpha(blind_intensity * 0.3);
    draw_rectangle(0, 0, room_width, room_height, false);
    draw_set_alpha(1);
}
draw_text(310-ym, 0 + xm, string(global.healther) + " HP 1 ИГРОК");
draw_healthbar(5, 5, 300, 20, global.healther, c_black, c_red, c_lime, 0, true, true);
draw_text(310-ym, 20 + xm, string(global.kills) + string(" килла(киллов)"));
draw_text(310-ym, 40 + xm, string(global.killsm) + string(" сбито метеоритов"));
draw_text(310-ym, 60 + xm, string(global.killsu) + string(" киллов у метеоритов"));
draw_text(310-ym, 80 + xm, string(timet) + string(" секунд"));
draw_healthbar(600, 5, 1000, 20, global.defendhealther*10/7, 100, c_green, reder, true, true, true)
draw_text(310-obj_mainchara.ym, obj_mainchara.xm+100, string(global.defendhealther) + " HP БРОНИ");
draw_text(310-obj_mainchara.ym, obj_mainchara.xm+120, string(global.metal) + " кусков метала")
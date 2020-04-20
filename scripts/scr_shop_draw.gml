///scr_shop_draw(route)

var route = argument0;
var type = route[shop_route.type];
var items = route[shop_route.items];

draw_background(bgr_hud, 0, 0);


draw_set_colour(c_white)

draw_text(1065, 10, "Money: " + string(global.money))
var percent = alarm[0] / (DAY_DURATION * room_speed)
show_debug_message(percent)
draw_rectangle(1055, 30, 1277, 50, true)
draw_rectangle(1055, 30, lerp(1055, 1277, percent), 50, false)
draw_set_colour(c_black)
draw_text(1065, 32, "daily costs in " + string(percent*DAY_DURATION))

draw_set_colour(c_white)
draw_text(400, 565, "Shop")

scr_shop_draw_items(route);

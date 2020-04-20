///scr_shop_draw(route)

var route = argument0;
var type = route[shop_route.type];
var items = route[shop_route.items];

draw_background(bgr_hud, 0, 0);


draw_set_colour(c_white)

draw_text(1065, 10, "Money: NAN")
draw_text(400, 565, "Shop")

scr_shop_draw_items(route);

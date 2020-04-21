///scr_shop_draw(route)

var route = argument0;
var type = route[shop_route.type];
var items = route[shop_route.items];

draw_background(bgr_hud, 0, 0);


draw_set_colour(c_white)

var xx = 1065;
var yy = 10;
var h = 25;
var w = 212;

// Money
draw_text(xx, yy, "Money: " + scr_convert_price(global.money));
yy += h;

// Daily Cost
var percent = alarm[0] / (DAY_DURATION * room_speed)

draw_rectangle(xx, yy, xx + w, yy + h, true)
draw_rectangle(xx, yy, lerp(xx, xx + w, percent), yy + h, false)
draw_set_colour(c_black)
draw_text(xx, yy, "daily costs in " + string(round(percent*DAY_DURATION)));
yy += h;
draw_text(xx, yy, "costs: " + scr_convert_price(scr_daily_cost()));
yy += h;

// Reputation
// TODO: Shouldn't be here! Because not Shop specific

draw_set_colour(c_black)
draw_text(xx, yy, "reputation");
yy += h;
draw_set_colour(c_black);
draw_rectangle(xx, yy, xx + w, yy + h, true);
draw_set_colour(c_green);
draw_rectangle(xx, yy, lerp(xx, xx + w, global.user_reputation), yy + h, false);
yy += h;




draw_set_colour(c_white)
draw_text(400, 565, "Shop")

scr_shop_draw_items(route);

///scr_shop_draw(route)

var route = argument0;
var type = route[shop_route.type];
var items = route[shop_route.items];

draw_background(bgr_hud, 0, 0);


draw_set_colour(c_white)

var xx = 1065;
var yy = 10;
var h = 30;
var w = 212;

// Money
draw_text(xx, yy, "Money: " + string(global.money));
yy += h;

// Daily Cost
var percent = alarm[0] / (DAY_DURATION * room_speed)

draw_set_colour(c_black)
draw_text(xx, yy, "daily costs in " + string(percent*DAY_DURATION));
yy += h;


draw_rectangle(xx, yy, xx + w, yy + h, true);
draw_rectangle(xx, yy, lerp(xx, xx + w, percent), yy + h, false)
yy += h;

// Reputation
// TODO: Shouldn't be here! Because not Shop specific
var total = global.user_reputition + global.user_unsatisfied;
var rep_percent = global.user_reputition / total;
var neg_percent = global.user_unsatisfied / total;

draw_rectangle(xx, yy, xx + w, yy + h, true);
draw_set_colour(c_green);
draw_rectangle(xx, yy, lerp(xx, xx + w, rep_percent), yy + h, false);
draw_set_colour(c_red);
draw_rectangle(lerp(xx, xx + w, rep_percent), yy, xx + w, yy + h, false);
yy += h;




draw_set_colour(c_white)
draw_text(400, 565, "Shop")

scr_shop_draw_items(route);

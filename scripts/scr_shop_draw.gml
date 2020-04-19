///scr_shop_draw()
draw_set_colour(c_white)
draw_text(10, 565, "Item Description")
draw_text(1065, 10, "Money: NAN")

var length = array_length_1d(global.devices);
var xx = 0;
for (var i = 0; i < length; i++){
    var dev = global.devices[i];
    draw_text(400+xx, 565, dev[device_struct.name])
    xx += 80;
}

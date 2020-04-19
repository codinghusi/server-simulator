///scr_shop_draw()

draw_background(bgr_hud, 0, 0);


draw_set_colour(c_white)

draw_text(10, 565, "Item Description")
draw_text(1065, 10, "Money: NAN")
draw_text(400, 565, "Shop")

var hdevice = scr_shop_get_hovered_device();
if hdevice != noone{
    draw_text(10, 585, "Name: " + hdevice[device_struct.name])
    draw_text(10, 605, "Desc: " + hdevice[device_struct.description])
}

var length = array_length_1d(global.devices);
var xx = 0;
for (var i = 0; i < length; i++){
    var device = global.devices[i];
    draw_roundrect_ext(395+xx, 595, 465+xx, 665, 10, 10, device != hdevice)
    if (sprite_exists(object_get_sprite(device[device_struct.object])))
        draw_sprite(object_get_sprite(device[device_struct.object]), device[device_struct.subimage], 430+xx, 630)
    xx += 80;
}

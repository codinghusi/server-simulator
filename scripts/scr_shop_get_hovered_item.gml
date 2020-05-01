///scr_shop_get_hovered_item(shop_items)

var items = argument0;

var length = array_length_1d(items);
var xx = 0;
for (var i = 0; i < length; i++){
    if point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), 395+xx, 595, 465+xx, 665) {
        return items[@ i];
    }
    xx += 80;
}
return noone;

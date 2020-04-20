///scr_shop_draw_items(shop_items)

var items = argument0;

var hovered_item = scr_shop_get_hovered_item(items);

var length = array_length_1d(items);
var xx = 0;

for (var i = 0; i < length; i++){
    var item = items[i];
    // Hover Selection
    draw_roundrect_ext(395+xx, 595, 465+xx, 665, 10, 10, item != hovered_item)
    // Draw Component
    var sprite = item[shop_item.sprite];
    var subimage = item[shop_item.subimage];
    if (sprite_exists(sprite)) {
        draw_sprite(sprite, subimage, 430+xx, 630)
    }
    xx += 80;
}

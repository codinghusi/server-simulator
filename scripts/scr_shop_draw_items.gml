///scr_shop_draw_items(route)

var route = argument0;
var items = route[shop_route.items];
var type = route[shop_route.type];
var hovered_item = scr_shop_get_hovered_item(items);

var length = array_length_1d(items);
var xx = 0;

var offsetx = 395;
var offsety = 596;
var w = 70;
var h = 70;

for (var i = 0; i < length; i++){
    var item = items[i];
    var hovering = item == hovered_item;
    var data = item[shop_item.additional_data];
    
    if (!scr_can_buy_item(item)) {
        draw_set_colour(c_red);
    } else {
        draw_set_colour(c_white);
    }
    
    // Hover Selection
    draw_roundrect_ext(
        offsetx + xx,
        offsety,
        offsetx + xx + w,
        offsety + h,
        10, 10,
        !hovering
    );
    
    // Draw Component
    var sprite = item[shop_item.sprite];
    var subimage = item[shop_item.subimage];
    if (sprite_exists(sprite)) {
        draw_sprite(sprite, subimage, offsetx + xx + w / 2, offsety + h / 2)
    }
    
    // Draw Quick Info
    draw_set_halign(fa_center);
    var quick_info = item[shop_item.quick_info];
    draw_text(offsetx + xx + w / 2, offsety + h + 5, quick_info);
    draw_set_halign(fa_left);
    
    if (type == shop_type.component) {
        // Tooltip
        if (hovering) {
            scr_draw_tooltip(
                offsetx + xx + w / 2,
                offsety,
                data[component_struct.name],
                data[component_struct.description]
            );
        }
    }
    
    xx += 80;
}

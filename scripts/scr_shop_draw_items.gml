///scr_shop_draw_items(route)

var route = argument0;
assert_shop_route(route, true);

var type = map_get(route, "type");
var items = map_get(route, "items");
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
    var sprite = map_get(item, "sprite");
    var subimage = map_get(item, "subimage");
    if (sprite_exists(sprite)) {
        draw_sprite(sprite, subimage, offsetx + xx + w / 2, offsety + h / 2)
    }
    
    // Draw Quick Info
    draw_set_halign(fa_center);
    var quick_info = map_get(item, "quick_info");
    draw_text(offsetx + xx + w / 2, offsety + h + 5, quick_info);
    draw_set_halign(fa_left);
    
    if (type == shop_type.component) {
        var component = map_get(item, "additional_data");
        // Tooltip
        if (hovering) {
            scr_draw_tooltip(
                offsetx + xx + w / 2,
                offsety,
                map_get(component, "name"),
                map_get(component, "description")
            );
        }
    }
    
    xx += 80;
}

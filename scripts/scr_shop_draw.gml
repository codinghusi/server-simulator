///scr_shop_draw(route)

var route = argument0;
var type = route[shop_route.type];
var items = route[shop_route.items];

draw_background(bgr_hud, 0, 0);


draw_set_colour(c_white)

draw_text(10, 565, "Item Description")
draw_text(1065, 10, "Money: NAN")
draw_text(400, 565, "Shop")

if (type == shop_type.component) {
    var hitem = scr_shop_get_hovered_item(items);
    
    if (hitem != noone) {
        var component = hitem[shop_item.additional_data];
        draw_text(10, 585, "Name: " + component[component_struct.name])
        draw_text(10, 605, "Desc: " + component[component_struct.description])
    }
}

scr_shop_draw_items(items);

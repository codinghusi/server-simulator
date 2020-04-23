///scr_component_to_item(component)

var component = argument0;

var item = scr_shop_item(
    map_get(component, "name"),
    object_get_sprite(map_get(component, "object")),
    map_get(component, "subimage"),
    scr_convert_price(map_get(component, "price")),
    map_get(component, "price"),
    component
);

return item;

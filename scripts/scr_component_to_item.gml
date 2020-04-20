///scr_component_to_item(component)

var component = argument0;

var item = scr_shop_item(
    component[component_struct.name],
    object_get_sprite(component[component_struct.object]),
    component[component_struct.subimage],
    component
);

return item;

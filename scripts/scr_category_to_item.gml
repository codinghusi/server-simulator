///scr_category_to_item(category)

var category = argument0;

var item = scr_shop_item(
    map_get(category, "name"),
    map_get(category, "sprite"),
    map_get(category, "subimage"),
    map_get(category, "name"),
    0,
    category
);

return item;

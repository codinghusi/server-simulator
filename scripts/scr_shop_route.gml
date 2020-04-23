///scr_shop_route(type, items)

enum shop_type {
    category,
    component
}

return map(
    kv("type", argument0),
    kv("items", argument1)
);

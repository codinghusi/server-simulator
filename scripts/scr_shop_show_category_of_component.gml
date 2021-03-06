///scr_shop_show_category_of_component(component)

var component = argument0;

var cat = scr_find_category(component);

var items = scr_components_to_items(cat[category.components]);
var type = shop_type.component;
var route = scr_shop_route(type, items);

var routes = obj_shop_controller.routes;

// discard other selected category
while (ds_stack_size(routes) >= 2) {
    ds_stack_pop(routes);
}

ds_stack_push(routes, route);

///scr_shop_back()

var routes = obj_shop_controller.routes;

// Go completly back
while (ds_stack_size(routes) > 1) {
    ds_stack_pop(routes);
}


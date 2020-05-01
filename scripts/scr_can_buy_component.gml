///scr_can_buy_component(component)

var component = argument0;

assert_component(component, true);

return map_get(component, "price") <= global.money;

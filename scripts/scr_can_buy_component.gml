///scr_can_buy_component(component)

assert_component(component, true);

var component = argument0;

return map_get(component, "price") <= global.money;

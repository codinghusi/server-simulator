///scr_sell_component(component)

var component = argument0;
var price = map_get(component, "price");

global.money += price;

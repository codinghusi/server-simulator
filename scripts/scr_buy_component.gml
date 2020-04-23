///scr_buy_component(component)

var component = argument0;
var price = map_get(component, "price");

if (scr_can_buy_component(component)) {
    global.money -= price;
    return true;
}

return false;

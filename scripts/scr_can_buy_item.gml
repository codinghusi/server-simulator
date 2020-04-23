///scr_can_buy_item(item)

var item = argument0;

return map_get(item, "price") <= global.money;

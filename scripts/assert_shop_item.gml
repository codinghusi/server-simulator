///assert_shop_item(item, crash)

var item = argument0;
var crash = argument1;

var keys = array("name", "sprite", "subimage", "quick_info", "price", "additional_data");

assert(
    !map_check(item, keys),
    "Item data is not in correct format: " + json_encode(item)
);


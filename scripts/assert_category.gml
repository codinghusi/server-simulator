///assert_category(category, crash)

var category = argument0;
var crash = argument1;

var keys = array("name", "sprite", "subimage", "components");

assert(
    map_check(category, keys),
    "Category data is not in correct format: " + to_json(category)
);


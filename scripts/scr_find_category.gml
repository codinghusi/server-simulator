///scr_find_category(component)

var component = argument0;
var categories = global.shop_categories;
var length = array_length_1d(categories);

for (var i = 0; i < length; ++i) {
    var category = categories[i];
    var components = map_get(category, "components");
    var l = array_length_1d(components);
    for (var j = 0; j < l; ++j) {
        var c = components[j]
        if (c == component) {
            return category;
        }
    }
}

return noone;

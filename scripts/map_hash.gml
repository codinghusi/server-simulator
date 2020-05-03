///map_hash(map, key)

var map_ = argument0;
var key = argument1;
var capacity = array_length_1d(map_) - 1;

var first_ord = string_ord_at(key, 1);
var second_ord = 1;
if (string_length(key) > 1) {
    second_ord = string_ord_at(key, 2);
}

var hash = (first_ord + second_ord) % capacity + 1;

return hash;

///map_check(map, keys)

var map_ = argument0;
var keys = argument1;

var length = array_length_1d(keys);
for (var i = 0; i < length; ++i) {
    var key = keys[i];
    if (!map_has(map_, key)) {
        return true;
    }
}

return false;

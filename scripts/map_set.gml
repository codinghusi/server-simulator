///map_set(map, ...keyvalues)

var map_ = argument[0];

var keyvalues = array_create(argument_count - 1);

for (var i = 1; i < argument_count; ++i) {
    var keyvalue = argument[i];
    keyvalues[i - 1] = keyvalue;
}

map_add(map_, keyvalues);

return map_;

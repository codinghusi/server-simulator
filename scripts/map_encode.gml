///map_encode(map)

var map_ = argument0;

var result = "{";
var separator = "";

var keys = map_kvs(map_);
var length = array_length_1d(keys);

for (var i = 0; i < length; ++i) {
    var keyvalue = keys[i];
    var key = kv_key(keyvalue);
    var value = kv_value(keyvalue);
    value = to_json(value);
    
    result += separator;
    result += '"' + key + '":' + value;
    
    separator = ",";
}

result += "}";

return result;

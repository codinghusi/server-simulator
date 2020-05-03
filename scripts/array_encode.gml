///array_encode(array)

var arr = argument0;
var length = array_length_1d(arr);
var result = "[";
var separator = "";

for (var i = 0; i < length; ++i) {
    result += separator;
    
    var value = arr[i];
    result += to_json(value);
    
    separator = ",";
}

result += "]";

return result;

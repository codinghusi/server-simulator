///map(array, script)

var arr = argument0;
var script = argument1;

var length = array_length_1d(arr);
var result;
result[length - 1] = 0;

for (var i = 0; i < length; ++i) {
    var item = arr[i];
    result[i] = script_execute(script, item);
}

return result;

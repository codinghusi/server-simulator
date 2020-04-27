///map(array, callback_script)

var arr = argument0;
var callback_script = argument1;

var length = array_length_1d(arr);
var result = array_create(length);

for (var i = 0; i < length; ++i) {
    var item = arr[i];
    result[i] = script_execute(callback_script, item);
}

return result;

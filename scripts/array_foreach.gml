///foreach(array, callback_script)

var arr = argument0;
var callback_script = argument1;

var length = array_length_1d(arr);
for (var i = 0; i < length; ++i) {
    var item = arr[i];
    script_execute(script, item);
}

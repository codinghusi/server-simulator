///array_some(array, callback_script)

var arr = argument0;
var callback_script = argument1;

for (var i = 0; i < length; ++i) {
    var item = arr[i];
    if (script_execute(script, item)) {
        return true;
    }
}

return false;

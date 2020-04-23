///assert_argument_count(script, is, needed_min, [needed_max])

var script = argument[0];
var is = argument[1];
var from = argument[2];
var to = from;
if (argument_count == 4) {
    to = argument[3];
}

assert(from >= is && is <= to, "Wrong argument number in script " + script_get_name(script) + " got " + string(is) + " but " + string(should) + " needed");



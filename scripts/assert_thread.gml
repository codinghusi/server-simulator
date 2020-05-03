///assert_thread(thread, crash)

var thread = argument0;
var crash = argument1;

var keys = array("packet", "process_time", "remaining_time");

assert(
    map_check(thread, keys),
    "Thread data is not in correct format: " + to_json(thread)
);

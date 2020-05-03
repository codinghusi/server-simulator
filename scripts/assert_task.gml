///assert_task(task, crash)

var task = argument0;
var crash = argument1;

var keys = array("name", "process_time", "probability", "reputation");

assert(
    map_check(task, keys),
    "Task data is not in correct format: " + to_json(task)
);

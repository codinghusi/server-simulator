///timer_get(key)

enum timer_ {
    start,
    total,
    count,
    second_count,
    last_second_average,
    second_offset
}

var key = argument0;

var timer = global.timers[? key];

if (is_undefined(timer)) {
    var timer = array_create(6);
    global.timers[? key] = timer;
    return timer;
}

var time = current_time;
if (timer[timer_.second_offset] div 1000 < time div 1000) {
    timer[@ timer_.second_offset] = time;
    timer[@ timer_.last_second_average] = timer_get_average(key) * timer[timer_.second_count];
    timer[@ timer_.second_count] = 0;
}

return timer;

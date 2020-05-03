///timer_start(key)

var key = argument0;

var timer = timer_get(key);
timer[@ timer_.start] = get_timer();


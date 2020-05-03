///timer_end(key)

var key = argument0;

var timer = timer_get(key);         

var start_time = timer[timer_.start];

var time = get_timer() - start_time;

var total_time = timer[timer_.total];

timer[@ timer_.total] = total_time + time;
timer[@ timer_.count] += 1;

timer[@ timer_.second_count] += 1;


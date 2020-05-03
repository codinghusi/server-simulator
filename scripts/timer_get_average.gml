///timer_get_average(key)

var key = argument0;

var timer = timer_get(key);

return timer[timer_.total] / timer[timer_.count];

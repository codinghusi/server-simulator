///scr_component_process(component_instance, thread)

var component = argument0;
var new_thread = argument1;
var threads = data_get(component, "threads");

var length = array_length_1d(threads);
for(var i = 0; i < length; i++) {
    var thread = threads[@ i]
    if (thread == noone) {
        threads[@ i] = new_thread;
        show_debug_message("new thread for component " + string(threads));
        data_increase(component, "slots_used", 1);
        break;
    }
}

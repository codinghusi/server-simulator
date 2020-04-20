///scr_component_process(component_instance, thread)

var component = argument0;
var new_thread = argument1;

component.slots_used++;

var length = array_length_1d(threads);
for(var i = 0; i < length; i++) {
    var thread_tmp = threads[i]
    if (!is_array(thread_tmp)){
        threads[i] = new_thread;
        break;
    }
}

///method(instance, method, data_map)

enum component_method {
    internal_inbox,
    inbox,
    init,
    thread_finish,
    update
}

var instance = argument0;
var method_ = argument1;
var data_map = argument2;

if (instance_exists(instance)) {
    with (instance) {
        method_params = data_map;
        method_return_value = noone;
        event_user(method_);
        return method_return_value;
    }
} else {
    show_debug_message("Error: couldn't perform method(...) because instance doesn't exist");
}

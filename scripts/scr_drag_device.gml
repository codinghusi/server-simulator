///scr_drag_device(device)

var device = argument0;

var draggable = instance_create(0, 0, obj_drag_device);
draggable.dev = device;
show_debug_message(device);

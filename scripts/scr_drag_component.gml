///scr_drag_component(component)

var component = argument0;

var draggable = instance_create(0, 0, obj_drag_component);
draggable.dev = component;
show_debug_message(component);

///scr_component_occupy(component_instance)

var instance = argument0;

var available = instance.data[component_struct.slots_available];

instance.slots_used = available;

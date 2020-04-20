///scr_create_component(component_data, connection)

var data = argument0;
var component_object = data[component_struct.object];
var connection = argument1;
var downlink_count = data[component_struct.downlink_count];
var additional_data = data[component_struct.additional_data];
var uplink, downlink, downlinks, root;

var component = instance_create(0, 0, component_object);

if (!connection) {
    root = component;
} else {
    root = connection.root;
}

downlinks = ds_list_create();
for (var i = downlink_count - 1; i >= 0; --i) {
    downlinks[| i] = scr_create_connection(root, component, noone, 1); // TODO: Hardcoded
}

if (downlink_count) {
    downlink = downlinks[| 0];
}

// Beginning (Internet, www, cloud)
if (!connection) {
    uplink = noone;
}
// 1. At the end of the connection there is no component so we will be that
// 2. Or we need to go in the middle
else {
    var bottom_component = connection.downlink; // could be noone (see 1.)
    connection.downlink = component;
    
    uplink = connection;
    
    if (downlink_count) {
        downlink.downlink = bottom_component;
    }
    
    if (bottom_component) {
        bottom_component.uplink = downlink;
    }
}

component.uplink = uplink;
component.downlinks = downlinks;
component.connection = connection;
component.data = data;


// Position all components underneath and this one
if (connection) {
    scr_position_components(root);
    show_debug_message("updating tree");
}

// Init
with (component) {
    event_user(2);
    initialized = true;
}

return component;

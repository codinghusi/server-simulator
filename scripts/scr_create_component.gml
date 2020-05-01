///scr_create_component(component_data, connection)

var component = argument0;
var connection = argument1;

assert_component(component, true);

var component_object = map_get(component, "object");
var downlink_count = map_get(component, "downlink_count");
var uplink, downlink, downlinks, root;

var instance = instance_create(0, 0, component_object);

if (!connection) {
    root = instance;
} else {
    root = data_get(connection, "root", noone);
}

downlinks = ds_list_create();
for (var i = downlink_count - 1; i >= 0; --i) {
    downlinks[| i] = scr_create_connection(root, instance, noone, 1); // TODO: Hardcoded
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
    var bottom_component = data_get(connection, "downlink"); // could be noone (see 1.)
    
    
    // set the connections down and uplinks
    if (downlink_count) {
        data_set(downlink, "uplink", instance);
        data_set(downlink, "downlink", bottom_component);
    }
    
    data_set(connection, "downlink", instance);
    
    // Set instance down- and uplinks
    uplink = connection;
    
    if (bottom_component) {
        data_set(bottom_component, "uplink", downlink);
        data_set(bottom_component, "downlink", noone);
    }
}



data_init(instance, map(
    kv("uplink", uplink),
    kv("downlinks", downlinks),
    kv("connection", connection),
    kv("root", root)
));

data_init(instance, component);


// Position all components underneath and this one
if (connection && root) {
    scr_position_components(root);
}
// Init
data_set(instance, "initialized", true);

method(instance, component_method.init, map());

return instance;

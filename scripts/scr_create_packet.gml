///scr_create_packet(data, connection)

var packet = argument0;
var connection = argument1;

var instance = instance_create(0, 0, obj_packet);

data_init(instance, packet);
data_init(map(
    kv("connection", connection)
));

if (map_get(packet, "outgoing")) {
    data_set(instance, "position", 1); // start at the end
}

// Init
data_set(instance, "initialized", true);
method(instance, component_method.init, map());

return instance;

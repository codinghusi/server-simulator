///scr_create_packet(packet, connection)

var packet = argument0;
var connection = argument1;

assert_packet(packet);

var instance = instance_create(0, 0, obj_packet);

// Init
data_init(instance, packet);
data_init(instance, map(
    kv("initialized", true),
    kv("connection", connection)
));

if (map_get(packet, "outgoing")) {
    data_set(instance, "position", 1); // start at the end
} else {
    data_set(instance, "position", 0); // start at the beginning
}

method(instance, component_method.init, map());

return instance;

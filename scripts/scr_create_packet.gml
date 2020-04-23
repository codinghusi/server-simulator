///scr_create_packet(data, connection)

var packet = argument0;
var connection = argument1;

var instance = instance_create(0, 0, obj_packet);

data_init(packet, instance);
data_init(map(
    kv("connection", connection)
));

if (map_get(packet, "outgoing")) {
    instance.position = 1; // start at the end
}

// Init
with (instance) {
    event_user(2);
    initialized = true;
}

return instance;

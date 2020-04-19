///scr_create_packet(data, connection)

var data = argument0;
var connection = argument1;

var instance = instance_create(0, 0, obj_packet);

instance.data = data;
instance.connection = connection;

if (data[packet.outgoing]) {
    instance.position = 1; // start at the end
}

return instance;

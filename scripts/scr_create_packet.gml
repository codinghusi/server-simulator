///scr_create_packet(outgoing, connection, task)

var outgoing = argument0;
var connection = argument1;
var task = argument2;

var instance = instance_create(0, 0, obj_packet);

instance.outgoing = outgoing;
instance.connection = connection;
instance.task = task;

if (outgoing) {
    instance.position = 1; // start at the end
}

return instance;

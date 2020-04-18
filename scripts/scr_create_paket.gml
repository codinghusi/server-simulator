///scr_create_paket(outgoing, connection, task)

var outgoing = argument0;
var connection = argument1;
var task = argument2;

var paket = instance_create(0, 0, obj_paket);

paket.outgoing = outgoing;
paket.connection = connection;
paket.task = task;

if (outgoing) {
    paket.position = 1; // start at the end
}

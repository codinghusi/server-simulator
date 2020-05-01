///scr_burn_packet(x, y, packet)

var xx = argument0;
var yy = argument1;
var packet = argument2;

map_set(packet, "timeout", 0);

instance_create(xx, yy, obj_packet_burning)

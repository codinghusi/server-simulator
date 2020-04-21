///scr_burn_packet(x, y, packet)

var packet_ = argument2;
packet_[@ packet.timeout] = 0;

instance_create(argument0, argument1, obj_packet_burning)

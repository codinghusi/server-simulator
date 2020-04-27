///assert_packet(packet, crash)

var packet = argument0;
var crash = argument1;

var keys = array("outgoing", "task", "useless", "send_time", "timeout", "id", "ddos");

assert(
    map_check(packet, keys),
    "Packet data is not in correct format: " + json_encode(packet)
);

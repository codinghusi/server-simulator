///assert_packet(packet)

var packet = argument0;

var keys = array("outgoing", "task", "useless", "send_time", "timeout", "id", "ddos");

assert(
    map_check(packet, keys),
    "Packet data is not in correct format: " + to_json(packet)
);

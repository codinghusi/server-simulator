///scr_packet_timeouted(packet)

var packet = argument0;
if (map_get(packet, "send_time") + map_get(packet, "timeout") < current_time) {
    return true;
}

return false;

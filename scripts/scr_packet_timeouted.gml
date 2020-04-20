///scr_packet_timeouted(packet)

var packet_ = argument0;
if (packet_[packet.send_time] + packet_[packet.timeout] < current_time) {
    return true;
}

return false;

///scr_downlink_available_in(downlink)

var downlink = argument0;

var time = noone;

var component = downlink.downlink;
if (component) {
    var downlink_packets = downlink.packets_traveling_incoming;
    var component_free_slots = component.data[component_struct.slots_available] - component.slots_used
    var free_slots = component_free_slots - downlink_packets;
    var can_send = free_slots > 0;
    
    if (!can_send && component.max_process_time && downlink.last_packet_sent_incoming) {
        var wait_for = component.max_process_time + room_speed / 8; // add small delay because else it's confusing
        var waited = downlink.last_packet_sent_incoming.position * downlink.bandwidth * global.travel_time;
        time = max(0, wait_for - waited);
    } else {
        time = 0;
    }
}

return time;

///scr_downlink_available_in(downlink)

var downlink = argument0;

var time = noone;

var component = data_get(downlink, "downlink");
if (component) {
    var downlink_packets = data_get(downlink, "packets_traveling_incoming");
    var component_free_slots = data_get(component, "slots_available") - data_get(component, "slots_used");
    var free_slots = component_free_slots - downlink_packets;
    var can_send = free_slots > 0;
    
    if (!can_send && data_get(component, "max_process_time") && data_get(downlink, "last_packet_sent_incoming")) {
        var wait_for = data_get(component, "max_process_time") + room_speed / 8; // add small delay because else it's confusing
        var waited = data_get_chain(downlink, "last_packet_sent_incoming", "position") * data_get(downlink, "bandwidth") * global.travel_time;
        time = max(0, wait_for - waited);
    } else {
        time = 0;
    }
}

return time;

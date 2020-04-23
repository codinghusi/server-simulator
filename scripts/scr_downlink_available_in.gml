///scr_downlink_available_in(downlink)

var downlink = argument0;

var time = noone;

var component = downlink.downlink;
if (component) {
    var downlink_packets = downlink.packets_traveling_incoming;
    var component_free_slots = data_get("slots_available", component) - data_get("slots_used", component);
    var free_slots = component_free_slots - downlink_packets;
    var can_send = free_slots > 0;
    
    if (!can_send && data_get("max_process_time", component) && data_get("last_packet_sent_incoming", downlink)) {
        var wait_for = component.max_process_time + room_speed / 8; // add small delay because else it's confusing
        var waited = data_get("position", data_get("last_packet_sent_incoming", downlink)) * data_get("bandwidth", downlink) * global.travel_time;
        time = max(0, wait_for - waited);
    } else {
        time = 0;
    }
}

return time;

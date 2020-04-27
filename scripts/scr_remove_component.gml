///scr_remove_component(component)

var component = argument0;

var uplink = data_get(component, "uplink");
var downlinks = data_get(component, "downlinks");
var used_downlinks = scr_component_used_downlinks(component);
var used_count = ds_list_size(used_downlinks);

if (used_count > 1) {
    return false;
}


if (used_count > 0) {
    var downlink = used_downlinks[| 0];
    data_set_chain(downlink, "downlink", "uplink", uplink, true);
    data_set(uplink, "downlink", data_get(downlink, "downlink"));
} else {
    data_set(uplink, "downlink", noone);
}

var length = ds_list_size(downlinks);
for (var i = 0; i < length; ++i) {
    downlink_to_remove = downlinks[| i];
    uplink_thats_new = uplink;
    with (obj_packet) {
        if (data_get("connection") == data_get(other, downlink_to_remove)) {
            data_set(connection, data_get(other, uplink_thats_new));
        }
    }
    instance_destroy(downlink_to_remove);
}

instance_destroy(component);

scr_position_components(data_get(uplink, root));

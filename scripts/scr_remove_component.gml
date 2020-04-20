///scr_remove_component(component)

var component = argument0;

var uplink = component.uplink;
var downlinks = component.downlinks;
var used_downlinks = scr_component_used_downlinks(component);
var used_count = ds_list_size(used_downlinks);

if (used_count > 1) {
    show_debug_message("ERROR: can't remove: too many downlinks");
    return false;
}


if (used_count > 0) {
    var downlink = used_downlinks[| 0];
    downlink.downlink.uplink = uplink;
    uplink.downlink = downlink.downlink;
} else {
    uplink.downlink = noone;
}

var length = ds_list_size(downlinks);
for (var i = 0; i < length; ++i) {
    var dl = downlinks[| i];
    instance_destroy(dl);
}

instance_destroy(component);

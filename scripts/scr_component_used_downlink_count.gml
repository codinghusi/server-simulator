///scr_component_used_downlink_count(component)

var component = argument0;
var downlinks = scr_component_used_downlinks(component)
var count = ds_list_size(downlinks)

ds_list_destroy(downlinks) //Lars jagt Memoryleaks

return count;

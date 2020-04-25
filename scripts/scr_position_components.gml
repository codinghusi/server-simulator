///scr_position_components(root_component)

var component = argument0;
var downlinks = scr_component_used_downlinks(component);
var length = ds_list_size(downlinks);
var width = scr_component_width(component);
var hor_width = 100;
var ver_spacing = 100;
var count = scr_component_used_downlink_count(component);


// width missing in calculation
// width / count gives spacing
//var xx = -floor(width / count);// - width / 2;
var xx = -width;

for (var i = 0; i < length; ++i) {
    var downlink_connection = downlinks[| i];
    var downlink_component = data_get("downlink_connection", downlink);
    var component_width = scr_component_width(downlink_component);
    downlink_component.x = component.x + (xx + component_width) / 2 * hor_width;
    downlink_component.y = component.y + ver_spacing;
    scr_position_components(downlink_component);
    xx += component_width * 2;
}

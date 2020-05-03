///is_map(map)

var map_ = argument0;

if (is_array(map_)) {
    var head = map_[0];
    if (is_array(head)) {
        var type = head[0];
        if (type == "__map") {
            return true;
        }
    }
}

return false;

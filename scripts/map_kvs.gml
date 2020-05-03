///map_kvs(map)

var map_ = argument0;
var size = map_size(map_);
var capacity = array_length_1d(map_) - 1;
var entries = array_create(size);
var j = 0;

for (var i = 1; i < capacity; ++i) {
    var slot = map_[i];
    if (is_undefined(slot)) {
        continue;
    }
    else if (is_array(slot)) {
        if (is_array(slot[0])) {
            var length = array_length_1d(slot);
            for (var k = 0; k < length; ++k) {
                entries[@ j++] = slot[k]; 
            }
        } else {
            entries[@ j++] = slot;
        }
    }
    
}

return entries;

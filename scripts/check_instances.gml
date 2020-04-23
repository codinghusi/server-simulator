///check_instances(...instances)

for (var i = argument_count - 1; i >= 0; --i) {
    var instance = argument[i];
    if (!instance_exists(instance)) {
        return false;
    }
}

return true;


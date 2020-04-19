///scr_device(name, description, object, subimage, downlink_count, additional_data)

enum device_struct {
    name,
    description,
    object,
    subimage,
    downlink_count,
    additional_data
}

if (argument_count == 6)  {
    return array(argument[0], argument[1], argument[2], argument[3], argument[4], argument[5]);
}
else {
    return array(argument[0], argument[1], argument[2], argument[3], argument[4], noone);
}

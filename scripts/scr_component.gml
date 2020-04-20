///scr_component(name, description, object, subimage, downlink_count, slots_available, speed, price, power_consumtion, additional_data)

enum component_struct {
    name,
    description,
    object,
    subimage,
    downlink_count,
    slots_available,
    speed,
    price,
    power_consumtion,
    additional_data
}

if (argument_count == 7)  {
    return array(argument[0], argument[1], argument[2], argument[3], argument[4], argument[5], argument[6], argument[7], argument[8], argument[9]);
}
else {
    return array(argument[0], argument[1], argument[2], argument[3], argument[4], argument[5], argument[6], argument[7], argument[8], noone);
}

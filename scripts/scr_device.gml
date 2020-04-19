///scr_device(name, description, object, downstream_count, additional_data)

enum device_struct {
    name,
    description,
    object,
    downstream_count,
    additional_data
}

if (argument_count == 5)  {
    return array(argument[0], argument[1], argument[2], argument[3], argument[4]);
}
else {
    return array(argument[0], argument[1], argument[2], argument[3], undefined);
}

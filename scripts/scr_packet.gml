///scr_packet(outgoing, task, useless, send_time, timeout, id, ddos)

return map(
    kv("outgoing", argument0),
    kv("task", argument1, data_type.object),
    kv("useless", argument2),
    kv("send_time", argument3),
    kv("timeout", argument4),
    kv("id", argument5),
    kv("ddos", argument6),
);

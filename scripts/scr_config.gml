///scr_config()

enum paket_task {
    delete,
    ping,
    webpage
}

global.paket_tasks = array(
    scr_task("delete", 1),
    scr_task("ping", 3),
    scr_task("webpage", 10)
);


global.devices = array(
    scr_device("schlechte firewall", "nicht so gut lol", obj_device_firewall, 1),
    scr_device("guter hub", "richtig top", obj_device_hub, 2),
    scr_device("guter switch", "hub ist besser xD", obj_device_switch, 3)
);

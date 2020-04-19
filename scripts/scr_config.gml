///scr_config()

enum packet_task {
    delete,
    ping,
    webpage
}

global.packet_tasks = array(
    scr_task("delete", 1),
    scr_task("ping", 3),
    scr_task("webpage", 10)
);


global.devices = array(
    scr_device("Basic Firewall", "Filters incoming Packets based#on their target port", obj_device_firewall, 0, 1),
    scr_device("Ethernet Y splitter", "Usable for splitting a Ethernet#connection to two Devices.#Requires no power as its a completly#passive Component. This also#means there is no logic involved#Each Packet goes out to each connection#which leads to useless traffic.", obj_device_hub, 0, 2),
    scr_device("3 Port Switch", "Cycles incoming packets to#all of its output connections", obj_device_switch, 0, 3),
    scr_device("Potato Pi", "Trusty credit card sized computer#powered by a diyed-potato battery", obj_device_server, 0, 0),
    scr_device("old Computer", "has seen better days but is still#perfectly able to run a webserver", obj_device_server, 1, 0),
    scr_device("Serverstation+", "Serverstation Plus Edition#Powerfull consumer grade hardware", obj_device_server, 2, 0)
);

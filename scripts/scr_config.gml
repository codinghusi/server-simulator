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


global.components = array(
    scr_component("Basic Firewall", "Filters incoming Packets based#on their target port", obj_component_firewall, 0, 1),
    scr_component("Ethernet Y splitter", "Usable for splitting a Ethernet#connection to two components.#Requires no power as its a completly#passive Component. This also#means there is no logic involved#Each Packet goes out to each connection#which leads to useless traffic.", obj_component_hub, 0, 2),
    scr_component("3 Port Switch", "Cycles incoming packets to#all of its output connections", obj_component_switch, 0, 3),
    scr_component("Potato Pi", "Trusty credit card sized computer#powered by a diyed-potato battery", obj_component_server, 0, 0),
    scr_component("old Computer", "has seen better days but is still#perfectly able to run a webserver", obj_component_server, 1, 0),
    scr_component("Serverstation+", "Serverstation Plus Edition#Powerfull consumer grade hardware", obj_component_server, 2, 0),
    scr_component("Queue", "Tired of packets overloading#your Server? This component FIFO-queues#Packets if the connected Server#is running at max power and#lets them out if capacity gets available", obj_component_queue, 0, 1)
);

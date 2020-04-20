///scr_config()

enum packet_task {
    delete,
    ping,
    webpage
}

global.selected_component = noone;

global.packet_tasks = array(
    scr_task("delete", 1),
    scr_task("ping", 3),
    scr_task("webpage", 10)
);


global.components_firewall = array(
    scr_component(
        "Basic Firewall",
        "Filters incoming Packets based#on their target port",
        obj_component_firewall, 0, 1),
);

global.components_splitter = array(
    scr_component(
        "Ethernet Y splitter",
        "Usable for splitting an Ethernet#connection to two components.#Requires no power as its a completly#passive Component. This also#means there is no logic involved#Each Packet goes out to each connection#which leads to useless traffic.",
        obj_component_hub, 0, 2),
    scr_component(
        "3 Port Switch",
        "Cycles incoming packets to#all of its output connections",
        obj_component_switch, 0, 3),
);

global.components_server = array(
    scr_component(
        "Potato Pi",
        "Trusty credit card sized computer#powered by a diyed-potato battery",
        obj_component_server, 0, 0),
    scr_component(
        "old Computer",
        "has seen better days but is still#perfectly able to run a webserver",
        obj_component_server, 1, 0),
    scr_component(
        "Serverstation+",
        "Serverstation Plus Edition#Powerfull consumer grade hardware",
        obj_component_server, 2, 0),
);

global.components_other = array(
    scr_component(
        "Queue",
        "Tired of packets overloading#your Server? This component FIFO-queues#Packets if the connected Server#is running at max power and#lets them out if capacity gets available",
        obj_component_queue, 0, 1)
)


global.shop_categories = array(
    scr_category("Firewall", spr_firewall, 0, global.components_firewall),
    scr_category("Splitter", spr_hub, 0, global.components_splitter),
    scr_category("Server", spr_server, 2, global.components_server),
    scr_category("Other", spr_queue, 0, global.components_other),
);

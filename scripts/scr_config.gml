///scr_config()

enum packet_task {
    ping,
    webpage
}

global.selected_component = noone;
global.process_time = room_speed * 1;
global.travel_time = room_speed;
global.power_multiplicator = 0.5;

global.user_reputation = 0.1;
global.user_satisfier = 0.005;
global.reputation_money = 30;

/// Time Score Measurement
global.start_time = current_time;



global.packet_tasks = array(
    scr_task("ping", 3, 0.2, 0.2),
    scr_task("webpage", 10, 0.8, 3)
);


global.components_firewall = array(
    scr_component(
        "Basic Firewall",
        "Filters incoming Packets based#on their target port",
        obj_component_firewall, 0,
        1, 1,
        1.4,
        50,
        175, false),
    scr_component(
        "Advanced Firewall",
        "Filters incoming Packets based#on their target ip and port",
        obj_component_firewall, 1,
        1, 2,
        1.8,
        720,
        100, true),
    scr_component(
        "Professional Firewall",
        "Filters incoming Packets based#on their target ip and port",
        obj_component_firewall, 2,
        1, 5,
        3,
        2280,
        150, true),
);

global.components_splitter = array(
    scr_component(
        "Ethernet Y splitter",
        "Usable for splitting an Ethernet#connection to two components.#Requires no power as its a completly#passive Component. This also#means there is no logic involved#Each Packet goes out to each connection#which leads to useless traffic.",
        obj_component_hub, 0,
        2, 1,
        1,
        30,
        0),
    scr_component(
        "3 Port Switch",
        "Cycles incoming packets to#all of its output connections",
        obj_component_switch, 0,
        2, 1,
        1,
        185,
        15),
    scr_component(
        "4 Port Switch",
        "Cycles incoming packets to#all of its output connections",
        obj_component_switch, 1,
        3, 2,
        1.5,
        735,
        25),
    scr_component(
        "6 Port Switch",
        "Cycles incoming packets to#all of its output connections",
        obj_component_switch, 2,
        5, 3,
        5,
        1890,
        150),
);

global.components_server = array(
    scr_component(
        "old Computer",
        "has seen better days but is still#perfectly able to run a webserver",
        obj_component_server, 1,
        0, 2,
        1,
        50,
        50),
    scr_component(
        "Potato Pi",
        "Trusty credit card sized computer#powered by a diyed-potato battery",
        obj_component_server, 0,
        0, 4,
        0.3,
        410,
        15),
    scr_component(
        "Serverstation",
        "Serverstation#Midrange consumer grade hardware",
        obj_component_server, 2,
        0, 6,
        1.7,
        1210,
        200),
    scr_component(
        "Serverstation+",
        "Serverstation Plus Edition#Powerfull consumer grade hardware",
        obj_component_server, 3,
        0, 8,
        2,
        5158,
        500),
);

global.components_other = array(
    scr_component(
        "Queue",
        "Tired of packets overloading#your Server? This component FIFO-queues#Packets if the connected Server#is running at max power and#lets them out if capacity gets available",
        obj_component_queue, 0,
        1, 10,
        1,
        145,
        25),
    scr_component(
        "Dualcore Queue",
        "Tired of packets overloading#your Server? This component FIFO-queues#Packets if the connected Server#is running at max power and#lets them out if capacity gets available",
        obj_component_queue, 1,
        1, 20,
        2,
        325,
        45),
    scr_component(
        "Delorean-Queue",
        "Has to reach 88 Miles per hour#before its operational but if it#does its the best option.#Packets will have no feeling of#time after going thru it.",
        obj_component_queue, 2,
        1, 50,
        10,
        750,
        88),
)


global.shop_categories = array(
    scr_category("Firewall", spr_category_firewall, 0, global.components_firewall),
    scr_category("Splitter", spr_category_switch, 0, global.components_splitter),
    scr_category("Server", spr_category_server, 2, global.components_server),
    scr_category("Other", spr_category_queue, 0, global.components_other),
);

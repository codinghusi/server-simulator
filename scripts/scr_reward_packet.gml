///scr_reward_packet(packet)

var packet = argument0;
var task = map_get(packet, "task");
var packet_task = map_get(global.packet_tasks, task);
var reputation = map_get(packet_task, "reputation");

reputation *=  clamp(1 - global.user_reputation, 0.2, 1);

var factor = reputation * global.user_satisfier;

global.user_reputation += factor;

global.user_reputation = clamp(global.user_reputation, 0, 1);

var reward = random_range(reputation * 0.8, reputation * 1.2) * global.reputation_money;

global.money += reward;

show_debug_message("reward: " + string(reward));

///scr_punish_packet(packet)

var packet_ = argument0;
var task_ = packet_[packet.task];
var packet_task_ = global.packet_tasks[task_];
var reputation = packet_task_[task.reputation];

reputation *=  clamp(1 - global.user_reputation, 0.2, 1);

var factor = reputation * global.user_satisfier;

global.user_reputation -= factor;

global.user_reputation = clamp(global.user_reputation, 0, 1);

var punish = random_range(reputation * 0.8, reputation * 1.2) * global.reputation_money / 2;

global.money -= punish;

show_debug_message("punish: " + string(punish));

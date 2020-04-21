///scr_punish_packet(packet)

var packet_ = argument0;
var task_ = packet_[packet.task];
var packet_task_ = global.packet_tasks[task_];
var reputation = packet_task_[task.reputation];

var factor = reputation * global.user_satisfier / 2;

global.user_reputation -= factor;

global.user_reputation = clamp(global.user_reputation, 0, 1);

var punish = random_range(reputation * 0.8 / 2, reputation * 1.2 / 2) * global.reputation_money / 2;

global.money -= punish;

show_debug_message("punish: " + string(punish));

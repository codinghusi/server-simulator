///scr_punish_packet(packet)

var packet_ = argument0;
var task_ = packet_[packet.task];
var packet_task_ = global.packet_tasks[task_];
var reputition = packet_task_[task.reputition];

global.user_reputition -= max(0, global.user_reputition - reputition * global.user_satisfier);
global.user_unsatisfied += reputition;

var punish = random_range(global.user_reputition * 0.8 / 2, global.user_reputition * 1.2 / 2);

global.money -= punish;

show_debug_message("punish: " + string(punish));

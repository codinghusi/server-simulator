///scr_reward_packet(packet)

var packet_ = argument0;
var task_ = packet_[packet.task];
var packet_task_ = global.packet_tasks[task_];
var reputition = packet_task_[task.reputition];

global.user_reputition += reputition;
global.user_unsatisfied = max(0, global.user_unsatisfied - global.user_reputition * global.user_satisfier);

var reward = random_range(global.user_reputition * 0.8, global.user_reputition * 1.2);

global.money += reward;

show_debug_message("reward: " + string(reward));

///scr_reward_packet(packet)

var packet_ = argument0;
var task_ = packet_[packet.task];
var reputition = task_[task.reputition];

global.user_reputition += reputition;
global.user_unsatisfied -= reputition * global.user_satisfier;

///scr_daily_cost()

var total = 0;
with(obj_component){
    total += data[component_struct.power_consumtion] * global.power_multiplicator
}
return total;

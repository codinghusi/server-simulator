var length = array_length_1d(global.devices);
var xx = 0;
for (var i = 0; i < length; i++){
    if point_in_rectangle(mouse_x, mouse_y, 395+xx, 595, 465+xx, 665) {
        return global.devices[i];
    }
    xx += 80;
}
return noone;

/*if point_in_rectangle(mouse_x, mouse_y, 365, 595, 1050, 665) {
}
/*if (mouse_x > 365 && mouse_x < 1050 && mouse_y > 595 && mouse_y < 665) {
    
}

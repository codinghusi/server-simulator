show_message("Game Over!")
global.gameover = true;

var minx = 10000;
var maxx = -10000;
var miny = 10000;
var maxy = -10000;
with(obj_component){
    if (x > maxx)
        maxx = x
    if (x < minx)
        minx = x
    if (y > maxy)
        maxy = y
    if (y < miny)
        miny = y
}
view_xview[0] = minx;
view_yview[0] = miny;
view_wview[0] = maxx-minx;
view_hview[0] = maxy-miny;

///scr_draw_tooltip(x, y, title, text)

var mx = argument0;
var my = argument1;
var title = argument2;
var text = argument3;

var yy = 32;
var hh;
draw_sprite(spr_tooltip_bottom,0,mx,my)

hh = string_height(text)
yy += hh
draw_set_colour(c_dkgray)
draw_rectangle(mx-200,my-yy,mx+200,my-yy+hh,false)
draw_set_colour(c_white)
draw_text(mx-190,my-yy, text)

hh = string_height(title) + 5
yy += hh
draw_set_colour(c_dkgray)
draw_rectangle(mx-200,my-yy,mx+200,my-yy+hh,false)
draw_set_colour(c_white)
draw_text(mx-190, my-yy, title)

draw_sprite(spr_tooltip_top,0,mx,my-yy)

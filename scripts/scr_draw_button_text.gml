///scr_draw_button(x, y, text, normal_colour, hover_colour)

var xx = argument0;
var yy = argument1;
var text = argument2;
var normal_colour = argument3;
var hover_colour = argument4;

var padding = 10;
var w = string_width(text) + padding * 2;
var h = string_height(text) + padding * 2;

draw_set_colour(normal_colour);
draw_rectangle(xx, yy, xx + w, yy + h, false);

draw_set_colour(c_black);
draw_text(xx + padding, yy + padding, text);

// Click and Hover Event (should be in Step)
var hovering = point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), xx, yy, xx + w, yy + h);
if (hovering) {
    draw_set_colour(hover_colour);
    draw_rectangle(xx, yy, xx + w, yy + h, true);
    
    if (mouse_check_button_pressed(mb_left)) {
        return true;
    }
}

return false;

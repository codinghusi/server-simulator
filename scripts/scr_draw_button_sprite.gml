///scr_draw_button_sprite(x, y, sprite, disabled)

var xx = argument0;
var yy = argument1;
var sprite = argument2;
var disabled = argument3;

// Click and Hover Event (should be in Step)
var w = sprite_get_width(sprite);
var h = sprite_get_height(sprite);
var hovering = point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), xx, yy, xx + w, yy + h);

if (disabled) {
    draw_sprite_ext(sprite, hovering, xx, yy, 1, 1, 0, c_gray, 1);
} else {
    draw_sprite(sprite, hovering, xx, yy);
}

if (hovering) {    
    if (mouse_check_button_pressed(mb_left)) {
        return true;
    }
}

return false;

///scr_shop_draw()

draw_background(bgr_hud, 0, 0);


draw_set_colour(c_white)

draw_text(10, 565, "Item Description")
draw_text(1065, 10, "Money: NAN")
draw_text(400, 565, "Shop")

var hcomponent = scr_shop_get_hovered_component();

var length = array_length_1d(global.components);
var xx = 0;
for (var i = 0; i < length; i++){
    var component = global.components[i];
    draw_roundrect_ext(395+xx, 595, 465+xx, 665, 10, 10, component != hcomponent)
    if (sprite_exists(object_get_sprite(component[component_struct.object])))
        draw_sprite(object_get_sprite(component[component_struct.object]), component[component_struct.subimage], 430+xx, 630)
    xx += 80;
}

if hcomponent != noone{
    draw_text(10, 585, "Name: " + hcomponent[component_struct.name])
    draw_text(10, 605, "Desc: " + hcomponent[component_struct.description])
    
    var yy = 32;
    draw_sprite(spr_tooltip_bottom,0,mouse_x,mouse_y)
    
    yy += string_height(hcomponent[component_struct.description])
    draw_set_colour(c_dkgray)
    draw_rectangle(mouse_x-200,mouse_y-yy,mouse_x+200,mouse_y-yy+string_height(hcomponent[component_struct.description]),false)
    draw_set_colour(c_white)
    draw_text(mouse_x-190,mouse_y-yy,hcomponent[component_struct.description])
    
    yy += string_height(hcomponent[component_struct.name])
    draw_set_colour(c_dkgray)
    draw_rectangle(mouse_x-200,mouse_y-yy,mouse_x+200,mouse_y-yy+string_height(hcomponent[component_struct.name]),false)
    draw_set_colour(c_white)
    draw_text(mouse_x-190,mouse_y-yy,hcomponent[component_struct.name])
    
    draw_sprite(spr_tooltip_top,0,mouse_x,mouse_y-yy)
}

///scr_shop_draw(route)

var route = argument0;
var type = route[shop_route.type];
var items = route[shop_route.items];

draw_background(bgr_hud, 0, 0);


draw_set_colour(c_white)

draw_text(10, 565, "Item Description")
draw_text(1065, 10, "Money: NAN")
draw_text(400, 565, "Shop")

scr_shop_draw_items(items);

if (type == shop_type.component) {
    var hitem = scr_shop_get_hovered_item(items);
    
    if (hitem != noone) {
        var hcomponent = hitem[shop_item.additional_data];
    
        draw_text(10, 585, "Name: " + hcomponent[component_struct.name])
        draw_text(10, 605, "Desc: " + hcomponent[component_struct.description])
        
        var yy = 32;
        var hh;
        draw_sprite(spr_tooltip_bottom,0,mouse_x,mouse_y)
        
        hh = string_height(hcomponent[component_struct.description])
        yy += hh
        draw_set_colour(c_dkgray)
        draw_rectangle(mouse_x-200,mouse_y-yy,mouse_x+200,mouse_y-yy+hh,false)
        draw_set_colour(c_white)
        draw_text(mouse_x-190,mouse_y-yy,hcomponent[component_struct.description])
        
        hh = string_height(hcomponent[component_struct.name]) + 5
        yy += hh
        draw_set_colour(c_dkgray)
        draw_rectangle(mouse_x-200,mouse_y-yy,mouse_x+200,mouse_y-yy+hh,false)
        draw_set_colour(c_white)
        draw_text(mouse_x-190,mouse_y-yy,hcomponent[component_struct.name])
        
        draw_sprite(spr_tooltip_top,0,mouse_x,mouse_y-yy)
    }
}

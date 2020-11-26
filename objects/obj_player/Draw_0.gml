

draw_set_color(c_olive);
draw_circle(x,y,50,false);
draw_line_width(x+20,y+15,mouse_x,mouse_y,10);
draw_circle(mouse_x,mouse_y,15,false);
draw_circle(mouse_x-10,mouse_y-15,5,false);
draw_circle(mouse_x,mouse_y-15,5,false);
draw_circle(mouse_x+10,mouse_y-15,5,false);
draw_circle(mouse_x+15,mouse_y,5,false);

draw_set_color(c_black);
draw_circle(x - 15,y-15,10,false);
draw_circle(x + 15,y-15,10,false);



//draw_self();
/// @description Insert description here
// You can write your code in this editor
//physics_draw_debug()
//draw_self()
offset_y = lengthdir_y(sprite_height/2,image_angle+90)
offset_x = lengthdir_x(sprite_height/2,image_angle+90)
draw_sprite_ext(spr_spaceship_head,0,x+offset_x,y+offset_y,1,1,image_angle,c_white,1)
draw_sprite_ext(spr_spaceship,0,x,y,1,1,image_angle,c_white,1)

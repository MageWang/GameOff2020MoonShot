/// @description Insert description here
// You can write your code in this editor
if instance_exists( obj_spaceship){
	draw_y = 0
	draw_text(0,(draw_y++)*20, "power:"+string(obj_spaceship.engine_force_y_now)+","+string(obj_spaceship.engine_force_x_now))
	draw_text(0,(draw_y++)*20,"("+string(obj_spaceship.x)+","+string(obj_spaceship.y)+")")
	draw_text(0,(draw_y++)*20,"room:("+string(room_width)+","+string(room_height)+")")
	
	height  = max(0,obj_spaceship.origin_y-obj_spaceship.y)
	draw_text(0,(draw_y++)*20,""+string(height)+" KM")
	speed_y = -obj_spaceship.phy_speed_y
	if abs(speed_y) < 0.5 speed_y = 0
	draw_text(0,(draw_y++)*20,""+string(speed_y)+" KM/H")
	draw_text(0,(draw_y++)*20,"FUEL:"+string(obj_spaceship.fuel)+" L")
}

draw_y = 0
draw_text(room_width/2,(draw_y++)*20,"score: "+string(score))
draw_text(room_width/2,(draw_y++)*20,"success: "+string(success))

draw_y = 0
draw_text(room_width-100,(draw_y++)*20,"up:engine on")
draw_text(room_width-100,(draw_y++)*20,"left:<-")
draw_text(room_width-100,(draw_y++)*20,"right:->")
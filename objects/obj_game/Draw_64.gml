/// @description Insert description here
// You can write your code in this editor
if instance_exists( obj_spaceship){
	draw_text(0,0, "power:"+string(obj_spaceship.engine_force_y_now)+","+string(obj_spaceship.engine_force_x_now))
	draw_text(0,20,"("+string(obj_spaceship.x)+","+string(obj_spaceship.y)+")")
	draw_text(0,40,"room:("+string(room_width)+","+string(room_height)+")")
	
	height  = max(0,obj_spaceship.origin_y-obj_spaceship.y)
	draw_text(room_width/2,0,""+string(height)+" KM")
	draw_text(room_width/2,20,""+string(-obj_spaceship.phy_speed_y)+" KM/H")
	draw_text(room_width/2,40,"FUEL:"+string(obj_spaceship.fuel)+" L")
}

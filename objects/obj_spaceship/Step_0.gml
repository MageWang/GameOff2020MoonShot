/// @description Insert description here
// You can write your code in this editor
if keyboard_check(vk_up){
	physics_apply_local_force(0,0,0,-engine_force_y)
}
if keyboard_check(vk_left){
	physics_apply_torque(-engine_force_x*random_range(0.8,1.2))
}
if keyboard_check(vk_right){
	physics_apply_torque(engine_force_x*random_range(0.8,1.2))
}
if(y<100){
	physics_world_gravity(0,5)
	fuel_out = true
}
else{
	if fuel_out == false {
		if is_launch physics_apply_torque(engine_force_x*0.1)
		physics_apply_local_force(0,0,0,-engine_force_y*(y-300)/room_height)
	}
	physics_world_gravity(0,10)
}

if origin_y - y > 10 {
	is_launch = true
}

if is_launch && origin_y - y < -30 {
	instance_destroy(self)
}

//camera_width = camera_get_view_width(view_camera[0])
//camera_height = camera_get_view_height(view_camera[0])
//camera_speed = 30
//camera_x = lerp(x-camera_width/2,camera_get_view_x(view_camera[0]), 1/room_speed*camera_speed)
//camera_y = lerp(y-camera_height/2,camera_get_view_y(view_camera[0]), 1/room_speed*camera_speed) 
//camera_set_view_pos(view_camera[0],camera_x,camera_y)

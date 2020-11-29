/// @description Insert description here
// You can write your code in this editor
if keyboard_check(vk_up){
	if (fuel>0){
		engine_force_y_now+=engine_force_y
		fuel-= 1/game_get_speed(gamespeed_fps)
		fuel = max (fuel,0)
	}
	else{
		engine_force_y_now+=engine_force_y/2
	}
	engine_force_y_now = min(engine_force_y_max, engine_force_y_now)
	
}
else{
	if (engine_force_y_now > 0)  engine_force_y_now=0
}
physics_apply_local_force(0,0,0,-engine_force_y_now)
physics_draw_debug()

if (is_launch){
	if keyboard_check(vk_left){
		engine_force_x_now -= engine_force_x*random_range(0.8,1.2)
	}
	else if keyboard_check(vk_right){
		engine_force_x_now += engine_force_x*random_range(0.8,1.2)
	}
	else{
		if(engine_force_x_now>0){
			engine_force_x_now -= engine_force_x*random_range(0.8,1.2)
			engine_force_x_now = max(0, engine_force_x_now)
		}
		else if(engine_force_x_now<0){
			engine_force_x_now += engine_force_x*random_range(0.8,1.2)
			engine_force_x_now = min(0, engine_force_x_now)
		}
	}
	
	if(random(2) < 1){
		engine_force_x_now += engine_force_x*random(0.2)
	}
	else{
		engine_force_x_now -= engine_force_x*random(0.2)
	}
	engine_force_x_now = min(engine_force_x_max, engine_force_x_now)
engine_force_x_now = max(-engine_force_x_max, engine_force_x_now)
}


//physics_apply_torque(engine_force_x_now)
physics_apply_local_force(0,sprite_height/2,-engine_force_x_now,0)

if(y<100){
	physics_world_gravity(0,5)
}
else{
	physics_world_gravity(0,10)
}

if origin_y - y > 10 {
	is_launch = true
}

if is_launch && origin_y - y < -30 {
	instance_destroy(self)
}

if(x > room_width){
	show_debug_message("x=0")
	phy_position_x = 0
}
if(x < 0){
	phy_position_x = room_width
	show_debug_message("x=room_width")
}

camera_height = camera_get_view_height(view_camera[0])
camera_speed = 30
camera_x = camera_get_view_x(view_camera[0])
camera_y = lerp(y-camera_height/2,camera_get_view_y(view_camera[0]), 1/room_speed*camera_speed) 
if(camera_y > camera_y_max) camera_y = camera_y_max
camera_set_view_pos(view_camera[0],camera_x,camera_y)
//if(!init){
//	var fix, inst;
//	fix = physics_fixture_create();
//	physics_fixture_set_circle_shape(fix, 1);
//	physics_fixture_set_density(fix, 0);
//	inst = instance_create_layer(x, y,"Instances", obj_spaceship_head);
//	my_fix = physics_fixture_bind(fix, inst);
//	//physics_fixture_delete(fix);
//	init = true
//}

/// @description Insert description here
// You can write your code in this editor
if state == "die" {
	instance_destroy(obj_landing_ground)
	a = random(room_width)
	b = random(room_width)
	while(abs(a-b)<100){
		b = random(room_width)
	}
	instance_create_layer(a, 672, "Instances", obj_spaceship)
	instance_create_layer(b, 672, "Instances", obj_landing_ground)
	
	instance_destroy(obj_gold)
	
	x1 = obj_spaceship.x
	y1 = obj_spaceship.y  - 100
	x3 = obj_landing_ground.x
	y3 = obj_landing_ground.y
	x2 = (x1+x3)/2
	r = random_range(1000,5000)
	y2 = y1-r
	code_create_instance_along_curve(obj_gold, x1, y1, x2, y2 ,x3,y3, 90, 100/r)
	
	state = "running"
}

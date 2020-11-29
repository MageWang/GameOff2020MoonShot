/// @description Insert description here
// You can write your code in this editor
if state == "die" {
	instance_create_layer(random(room_width), 672, "Instances", obj_spaceship)
	state = "running"
}

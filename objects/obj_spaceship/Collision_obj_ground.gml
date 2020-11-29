/// @description Insert description here
// You can write your code in this editor
if is_launch {
	instance_destroy()
	instance_create_layer(x,y,"Instances", obj_boom)
}
/// @description Insert description here
// You can write your code in this editor
if current_second - create_second > 3{
	instance_destroy(obj_spaceship)
	instance_destroy()
	obj_game.state = "die"
}
/// @description Insert description here
// You can write your code in this editor
if(state == "die"){
	effect_create_above(ef_firework, x+random_range(-10,10), y+random_range(-10,10), choose(0, 1, 2), c_yellow);
	instance_destroy()
}
/// @description Insert description here
// You can write your code in this editor
state = "running"
score = 0
success = 0

//code_create_instance_along_curve(obj_gold, obj_spaceship.x, obj_spaceship.y, obj_landing_ground.x,obj_landing_ground.y, 90, point_distance(obj_spaceship.x, obj_spaceship.y, obj_landing_ground.x,obj_landing_ground.y))
x1 = obj_spaceship.x 
y1 = obj_spaceship.y - 100
x3 = obj_landing_ground.x
y3 = obj_landing_ground.y
x2 = (x1+x3)/2
y2 = y1-1000

code_create_instance_along_curve(obj_gold, x1, y1, x2, y2 ,x3,y3, 90, 0.1)

/// @description Insert description here
// You can write your code in this editor
movement_speed = 5

image_speed = 0

unit_x = 1
unit_y = 0

velocity_x = 0
velocity_y = 0

current_torso = spr_player_torso_walk_handgun;

//gun input flags
can_shoot = true
semi_auto = false
auto_fire = true

//gunmount variables
gun_mount_x = 87
gun_mount_y = 52

ghost_mount_x = 500
ghost_mount_y = 0

/*
var length = point_distance(0,0,gun_mount_x,gun_mount_y)
	var g_angle = point_direction(0,0,gun_mount_x, gun_mount_y)
*/
ghost_len = point_distance(0,0,ghost_mount_x, ghost_mount_y)
ghost_angle = point_direction(0,0,ghost_mount_x, ghost_mount_y)

my_ghost = instance_create_layer(x+ghost_mount_x,y+ghost_mount_y,
					"Instances",obj_ghost)
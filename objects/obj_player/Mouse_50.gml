/// @description Insert description here
// You can write your code in this editor

//show_debug_message("hi from the mouse")
//var spawn_x = 0;
//var spawn_y = 0;

if((can_shoot == true) && (auto_fire == true))
{
	var length = point_distance(0,0,gun_mount_x,gun_mount_y)
	var g_angle = point_direction(0,0,gun_mount_x, gun_mount_y)
	
	gun_spawn_x = x + lengthdir_x(length, g_angle+image_angle);
	gun_spawn_y = y + lengthdir_y(length, g_angle+image_angle);
		
	
	//need to finish calculating spawn_x/y
	var bullet_obj = instance_create_layer(gun_spawn_x,gun_spawn_y,"Instances",obj_bullet_01)
	
	bullet_obj.hspeed = unit_x * bullet_speed
	bullet_obj.vspeed = unit_y * bullet_speed
	bullet_obj.image_angle = image_angle
	
	can_shoot = false
	if(semi_auto == true)
	{
		auto_fire = false;
	}
	alarm[9] = room_speed / 3;
}
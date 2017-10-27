/// @description Insert description here
// You can write your code in this editor
//first step - calculate the vector between the player and the mouse
var vx = mouse_x - x; //x compenent of our vector
var vy = mouse_y - y; //y component of our vector

var magnitude = sqrt((vx*vx) + (vy*vy)) //a^2 + b^2 = c^2

if(magnitude > 0)
{
//calculate the unit vector
	unit_x = vx / magnitude
	unit_y = vy / magnitude
}


//calculate the angle ... this
var radians = arctan2(-unit_y, unit_x)
image_angle = radtodeg(radians)

fixed_box_left = x - (fixed_box_width/2)
fixed_box_right = x + (fixed_box_width/2)
fixed_box_top = y - (fixed_box_height/2)
fixed_box_bottom = y + (fixed_box_height/2)

//maintain gun_spawn_location for reticle system
var length = point_distance(0,0,gun_mount_x,gun_mount_y)
var g_angle = point_direction(0,0,gun_mount_x, gun_mount_y)
	
gun_spawn_x = x + lengthdir_x(length, g_angle+image_angle);
gun_spawn_y = y + lengthdir_y(length, g_angle+image_angle);
		



// animation stuff


var playerAngle = point_direction(x,y,mouse_x,mouse_y);
var playerCurrentFeet = sprite_index;
//manage left/right animation change
if (velocity_x = 0 && velocity_y = 0) 
{ //player not moving
	image_speed = 0; 
	playerCurrentFeet = spr_player_feet_idle;
}
else if (velocity_x != 0 && velocity_y != 0){ //the angle code changes between walk and strafe on the fly, depending on image angle
	if	(sign(velocity_x) + sign(velocity_y) = 0) {//this code checks to see which diagional direction the player is using
		if (((playerAngle >= 90) & (playerAngle <=180)) || ((playerAngle >=270) || (playerAngle =0))) {
		playerCurrentFeet = spr_player_feet_strafe_right;
		}
		else {
		playerCurrentFeet = spr_player_feet_walk;
		}
	}
	else if (sign(velocity_x) + sign(velocity_y) = -2 || 2) {//this code checks to see which diagional direction the player is using
		if (((playerAngle >= 0) & (playerAngle <=90)) || ((playerAngle >=180) && (playerAngle <=270))) {
		playerCurrentFeet = spr_player_feet_strafe_right;
		}
		else {
		playerCurrentFeet = spr_player_feet_walk;
		}
	}
}
else if (velocity_x = 0 && velocity_y != 0){ //the angle code changes between walk and strafe on the fly, depending on image angle
	if (((playerAngle >= 135) & (playerAngle <=225)) || ((playerAngle >=315) || (playerAngle <=45))) {
		playerCurrentFeet = spr_player_feet_strafe_right;
	}
	else {
		playerCurrentFeet = spr_player_feet_walk;
	}
}
else if (velocity_x != 0 && velocity_y = 0){ //the angle code changes between walk and strafe on the fly, depending on image angle
	if (((playerAngle >= 225) & (playerAngle <=315)) || ((playerAngle >=45) & (playerAngle <=135))) {
		playerCurrentFeet = spr_player_feet_strafe_right;
	}
	else {
		playerCurrentFeet = spr_player_feet_walk;
	}
	//++walksprite_indexFrame; 
	//if (image_index >= 21) image_index = 0;
}

sprite_index = playerCurrentFeet
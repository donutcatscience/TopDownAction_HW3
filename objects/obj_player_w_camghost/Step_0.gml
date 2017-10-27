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
/*
else
{
//avoid divide by 0
	unit_x = 0
	unit_y = 0 
}*/

velocity_x = unit_x * movement_speed
velocity_y = unit_y * movement_speed

//calculate the angle ... this
var radians = arctan2(-unit_y, unit_x)
image_angle = radtodeg(radians)

var g_x = x + lengthdir_x(ghost_len, ghost_angle+image_angle);
var g_y = y + lengthdir_y(ghost_len, ghost_angle+image_angle);

my_ghost.x = g_x
my_ghost.y = g_y
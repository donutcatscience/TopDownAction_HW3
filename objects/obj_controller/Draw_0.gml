/// @description Insert description here
// You can write your code in this editor
//draw_healthbar(100,100,200,130,health,
//				c_black,c_red,c_red,0,true,true)

var vx = mouse_x - obj_player.x; //x compenent of our vector
var vy = mouse_y - obj_player.y; //y component of our vector

var magnitude = sqrt((vx*vx) + (vy*vy)) //a^2 + b^2 = c^2

var ret_x = obj_player.gun_spawn_x + vx;
var ret_y = obj_player.gun_spawn_y + vy;

draw_sprite(spr_reticle,0,ret_x, ret_y);
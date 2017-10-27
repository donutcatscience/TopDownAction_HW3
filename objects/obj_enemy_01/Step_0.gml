//hunter killer AI
var c_x_vel
var c_y_vel
if(obj_player.x < x)
{
	c_x_vel = -x_vel
}
else 
{
	c_x_vel = x_vel
}

if(obj_player.y < y)
{
	c_y_vel = -y_vel
}
else 
{
	c_y_vel = y_vel
}


var pred_x = x+c_x_vel
var pred_y = y+c_y_vel

 p_bleft = (x+c_x_vel)-(b_w/2)
 p_bright = (x+c_x_vel)+(b_w/2)
 p_btop = (y+c_y_vel)-(b_h/2)
 p_bbot = (y+c_y_vel)+(b_h/2)

var col_x = collision_rectangle(p_bleft,(y)-(b_h/2),p_bright,(y)+(b_h/2),
	obj_col_box,false,true)
var col_y = collision_rectangle((x)-(b_w/2),p_btop,(x)+(b_w/2),p_bbot,
	obj_col_box,false,true)
//if(place_empty(pred_x, pred_y))
if(col_x == noone)
{
	x+=c_x_vel
	
}
if(col_y == noone)
{
	y+=c_y_vel
}
image_angle = point_direction(0,0,c_x_vel,c_y_vel)
/*
if(!place_meeting(pred_x,y,obj_col_box))
{
	x+=x_vel	
}
if(!place_meeting(x,pred_y,obj_col_box))
{
	y+=y_vel	
}
*/

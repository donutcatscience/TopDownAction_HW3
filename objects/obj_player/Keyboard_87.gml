
/*
	logic:
	we need to predict what taking a step will do 
		if it collides ... don't take the step
		otherwise go ahead and take the step
		
	do this for both X and Y
*/
//set up predictions:
var pred_bbox_left = fixed_box_left + velocity_x
var pred_bbox_right = fixed_box_right + velocity_x
var pred_bbox_top = fixed_box_top + velocity_y
var pred_bbox_bottom = fixed_box_bottom + velocity_y 



//Y check
if(! collision_rectangle(fixed_box_left, pred_bbox_top, fixed_box_right, pred_bbox_bottom,
							obj_col_box, false, true) )
{
	y += velocity_y
}

image_speed = 1
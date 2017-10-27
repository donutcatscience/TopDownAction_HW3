

var pred_bbox_left = fixed_box_left + velocity_x
var pred_bbox_right = fixed_box_right + velocity_x
var pred_bbox_top = fixed_box_top + velocity_y
var pred_bbox_bottom = fixed_box_bottom + velocity_y 



if(! collision_rectangle(pred_bbox_left, fixed_box_top, pred_bbox_right, fixed_box_bottom,
						obj_col_box, false, true) )
{
	x += velocity_x
}



image_speed = 1
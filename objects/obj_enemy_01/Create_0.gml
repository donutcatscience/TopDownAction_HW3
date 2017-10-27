randomize()
x_vel = 1
y_vel = 1
image_angle = point_direction(0,0,x_vel,y_vel)
//alarm[0] = room_speed * random_range(.5,5.0)

b_l = bbox_left
b_t = bbox_top
b_r = bbox_right
b_b = bbox_bottom

b_w = bbox_right-bbox_left
b_h = bbox_bottom-bbox_top

 p_bleft = (x+x_vel)-(b_w/2)
 p_bright = (x+x_vel)+(b_w/2)
 p_btop = (y+y_vel)-(b_h/2)
 p_bbot = (y+y_vel)+(b_h/2)
 
hit_points = 10
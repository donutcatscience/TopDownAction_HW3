/***************************
Player graphics VARIABLES
***************************/
image_speed = 0
image_angle = 0
sprite_index = spr_player_feet_idle
current_torso = spr_player_torso_walk_handgun;

/***************************
Player movement/aiming VARIABLES
***************************/
movement_speed = 5

unit_x = 1
unit_y = 0

velocity_x = 0
velocity_y = 0

/***************************
Gun VARIABLES
***************************/
bullet_speed = 50

//gun input flags
can_shoot = true
semi_auto = false
auto_fire = true

//gunmount variables
gun_mount_x = 87
gun_mount_y = 52

gun_spawn_x = 0
gun_spawn_y = 0


/***************************
Collision System VARIABLES
***************************/

//create a static collision box
//this means, make sure your object starts on the best animation frame
//keep track of a new left,right,top,bottom
//width and height of the box
fixed_box_width = bbox_right - bbox_left
fixed_box_height = bbox_bottom - bbox_top

//set initial coordinates
//this calculation will be repeated in step-event
fixed_box_left = x - (fixed_box_width/2)
fixed_box_right = x + (fixed_box_width/2)
fixed_box_top = y - (fixed_box_height/2)
fixed_box_bottom = y + (fixed_box_height/2)



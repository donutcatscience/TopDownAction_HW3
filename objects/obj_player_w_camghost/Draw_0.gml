/// @description Insert description here
// You can write your code in this editor
show_debug_message(image_index)
draw_self()
//draw_sprite_ext( sprite, subimg, x, y, xscale, yscale, rot, colour, alpha );
///if(current_torso == 1)
//{
draw_sprite_ext(current_torso,
				image_index, x,y,
				1,1, image_angle,
				c_white, 1)
//}
//else if(current_torso == 2)
/*{
draw_sprite_ext(spr_player_torso_walk_shotgun,
				image_index, x,y,
				1,1, image_angle,
				c_white, 1)
}*/
/// @description Insert description here
// You can write your code in this editor
hit_points -= other.damage

instance_destroy(other) //kill the bullet

if(hit_points <= 0)
{
	instance_destroy() //destroy self
	instance_create_layer(x,y,"Instances",obj_explosion_01)
}
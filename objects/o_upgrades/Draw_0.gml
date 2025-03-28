/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_self();

nextUp = instance_nearest(o_player.x, o_player.y, o_upgradesFather)

if instance_exists(o_player) && instance_exists(nextUp)
{
	if point_distance(o_player.x, o_player.y, nextUp.x, nextUp.y) < 50
	{
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale, image_yscale,image_angle,c_gray,0.95)
		image_blend = global.lightPink;
	}
	else
	{
		image_blend = c_white;
	}
}
else
{
	image_blend = c_white;
}

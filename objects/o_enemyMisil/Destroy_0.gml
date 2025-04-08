/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (timeDying = false)
{
	exploBullet = instance_create_layer(x+lengthdir_x(5,direction),y+lengthdir_y(5,direction),"Bullets", o_explosion);
	exploBullet.image_xscale = 0.4;
	exploBullet.image_yscale = 0.4;
	exploBullet.image_speed = 0.9;
	exploBullet.sprite_index = s_exploBlue;
	if instance_exists(o_player)
	{
		o_player.alarm[9] = 5
	}
	else
	{
		gamepad_set_vibration(0,0,0)	
	}
}

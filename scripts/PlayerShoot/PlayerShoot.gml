// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function PlayerShoot()
{
	if (key_x)
	{
		if (alarm[0] <= 0)
		{
			dir = point_direction(x,y,mouse_x, mouse_y);
			bullet = instance_create_layer(x + lengthdir_x(25, aimDir), y + lengthdir_y(25, aimDir), "BulletsPlayer", o_bulletPlayer);
			bullet.speed = 3.5;
			bullet.direction = dir;
			alarm[0] = fireRate;
		}
	
	}

	if (gamepad_button_check(0,gp_shoulderr)) || (aiming)
	{
		if (alarm[0] <= 0)
		{
			bullet = instance_create_layer(x + lengthdir_x(25, aimDir), y + lengthdir_y(25, aimDir), "BulletsPlayer", o_bulletPlayer);
			bullet.speed = 3.5;
			bullet.direction = aimDir+off;
			off = random_range(-5,5)
			alarm[0] = fireRate;
		}
	
	}
}
/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if instance_exists(o_boss) && instance_exists(o_bossHP)
{
	if (goToBossHp)
	{
		direction = point_direction(x,y,o_bossHP.x, o_bossHP.y + random_range(-30,30))
		speed = 2;
	}
	else
	{
		RotateOnVinyl();
	}
}
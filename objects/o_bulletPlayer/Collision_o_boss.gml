/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (global.playing)
{
	other._hp -= bulletDamage;
	
	instance_destroy();
	
	if (isLucky) && instance_exists(o_player)
	{
		lucky = instance_create_layer(x,y,"Menu", o_lucky);
	}
	
	//other.spinCreateHole = true;
	//other.bullethole = point_distance(x,y,other.x, other.y);
	//other.angleHole = point_direction(other.x, other.y, x, y);
}
/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (goToBossHp)
{
	direction = point_direction(x,y,o_bossHP.x, o_bossHP.y)
	speed = 2;
}
else
{
	bossSpin = global.vinylSpin;
	
	bossPush = bossSpin * min(1.5, global.relativeSpeed);
	totalPush = bossPush;
	totalPush = clamp(totalPush, -totalMaxSpeed, totalMaxSpeed);
	
	if (theta <= 0)
	{
		theta =+ 360;	
	}
	
	theta += totalPush;
	x = cx + lengthdir_x(r, theta) 
	y = cy + lengthdir_y(r, theta)
}
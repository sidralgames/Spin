// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function RotateOnVinyl()
{
	bossSpin = global.vinylSpin;
	r  = point_distance(x,y,o_boss.x, o_boss.y)
	bossPush = bossSpin * min(1.5, global.relativeSpeed);
	totalPush = bossPush;
	totalPush = clamp(totalPush, -totalMaxSpeed, totalMaxSpeed);
	
	if (theta <= 0)
	{
		theta =+ 360;	
	}
	
	theta += totalPush;
	x = global.cx + lengthdir_x(r, theta) 
	y = global.cy + lengthdir_y(r, theta)
}
/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if !instance_exists(o_cableYellow)
{
	contPick --;
	image_xscale = 1.2;
	image_yscale = 1.2;
	if (contPick <=0)
	{
		canBePicked = true;
	}
	if (checkPos = false)
	{
		checkPos = true;
		r = point_distance(x,y,room_width/2, room_height/2);
		theta = point_direction(room_width/2, room_height/2, x, y);
	}
	
	image_angle = theta;
	bossPush = bossSpin * min(1.5, global.relativeSpeed);
	totalPush = bossPush;
	totalPush = clamp(totalPush, -totalMaxSpeed, totalMaxSpeed);

	if (theta <= 0)
	{
		theta =+ 360;	
	}
	
	theta += totalPush * global.relativeSpeed;
	x = cx + lengthdir_x(r, theta) 
	y = cy + lengthdir_y(r, theta)

}

/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
event_inherited();

if(checkPos = false)
{
	checkPos = true;
	image_xscale = 1;
	image_yscale = 1;
	r = point_distance(x,y,room_width/2, room_height/2);
	theta = point_direction(room_width/2, room_height/2, x, y);
	image_angle = 0
}
	
	
	contPick --;
	
	
	
	if (contPick <=0)
	{
		canBePicked = true;
		image_alpha = 1;
	}
	
	bossPush = bossSpin * min(1.5, global.relativeSpeed);
	totalPush = bossPush;
	totalPush = clamp(totalPush, -totalMaxSpeed, totalMaxSpeed);
	
	
	theta += totalPush * global.relativeSpeed;
	x = cx + lengthdir_x(r, theta) 
	y = cy + lengthdir_y(r, theta)
	
	if (theta <= 0)
	{
		theta =+ 360;	
	}
/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
_hp --;

if (_hp <= 0)
{
	instance_destroy();
}
if global.relativeSpeed> 1.4
{
	speed = initialSpeed * 1.4
}
else
{
	initialSpeed = lerp(initialSpeed ,0, 0.015)
	speed = initialSpeed * global.relativeSpeed
	
}



if speed <= 0.5
{
speed = 0;
image_xscale+=0.1;
image_yscale+=0.1;
}

if image_xscale >=1.5
{
	_hp = 0;
	sp1.bullet = self;
	sp1.spinCreateHole = true;
	sp1.angleHole = point_direction(o_boss.x, o_boss.y,x,y)
	sp1.distHole = point_distance(x,y,o_boss.x, o_boss.y)
	sp1.holeImage = irandom(2)
}
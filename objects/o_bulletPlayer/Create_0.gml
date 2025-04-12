/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

randomize();

global.bulletsFired +=1;

isLucky = false;
precision =3.35
_hp = 150;
image_speed = 0;
destroying = false;
type = collisionType.custom;
initialSpeed = 0;
speed = initialSpeed;
baseDamage = 1;
bulletDamage = 1;

if (global.luckyShot)
{
	if ( global.luckyShotOdds = irandom(global.luckyShotOdds) )
	{
		baseDamage = 25;
		isLucky = true;
	}
	else
	{
		baseDamage = 1;
	}
}
else
{
	baseDamage = 1;
}

image_xscale = 1 + (global.superShot * 0.5);
image_yscale = 1 + (global.superShot * 0.5);
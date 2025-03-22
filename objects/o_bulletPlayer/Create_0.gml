/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
_hp = 150;
image_speed = 0;
destroying = false;
type = collisionType.custom;
initialSpeed = 0;
speed = initialSpeed;

if (global.luckyShot)
{
	damage = irandom(global.luckyShotOdds);
	
	if damage = 0
	{
		bulletDamage = 25
	}
	else
	{
		bulletDamage = 1
	}
}
else
{
	bulletDamage = 1;
}
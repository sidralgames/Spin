/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
_hp = 0;

if (instance_exists(o_boss))
{
	o_boss._hp += 10 + (global.level*15);
	
	if (o_boss._hp >= o_boss._hpMax)
	{
		o_boss._hp = o_boss._hpMax;
	}
}
screenShake(5,50,3)

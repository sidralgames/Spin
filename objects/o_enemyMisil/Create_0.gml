/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
type = collisionType.custom;

timeDying = false;
bulletDamage = 1;
rotSpeed = 35;
anglePlayer = 0;
precision = 2;
initialSpeed = 2.25;
image_speed = 0;
setMisil = false;
switch(image_index)
{
	case 0:
	{
		_hp = 5;
		_hpTime = 180;
		initialSpeed = random_range(1.5,1.75)
		precision = random_range(1.2,1.75)
	}
	break;
	
	case 1:
	{
		_hp = 4;
		_hpTime = 180;
		initialSpeed = random_range(1.25,1.5)
		precision = random_range(1,1.25)
	}
	break;
	
	case 2:
	{
		_hp = 3;
		_hpTime = 180;
		initialSpeed = random_range(1,1.25)
		precision = random_range(0.75,1)
	}
	break;	
}
/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (contCanBeTouched > 0)
{
	contCanBeTouched --;
}

if (contCanBeTouched <= 0)
{
	canBeTouched = true;
}

image_angle = angleAguja;
angleAguja = clamp(angleAguja, 5, 33)
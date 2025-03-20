/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
_hp --;

if (_hp <= 20)
{
	image_alpha -= 0.01;
}

if (_hp <=0)
{
	instance_destroy();
}
/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
tocado = false;
if instance_exists(o_boss)
{
	global.vinylSpin = o_boss.bossVinylSpin;
}
else
{
	global.vinylSpin = -0.25; 
}
image_alpha = 1;
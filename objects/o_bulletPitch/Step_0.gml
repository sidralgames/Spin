/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (global.relativeSpeed > 1.1)
{
	speed = initialSpeed * 1.1;
}
else
{
	//initialSpeed = lerp(initialSpeed ,0, 0.015)
	speed = initialSpeed * global.relativeSpeed
}

scale = random_range(0.97, 1.03);
image_xscale = random_range(0.9, 1.1);
image_yscale = random_range(0.9, 1.1);

if (_hp <=0) || !instance_exists(o_boss)
{
	explo = instance_create_layer(x,y,"Bullets", o_explosion);
	explo.sprite_index = s_exploBlue;
	instance_destroy();
}
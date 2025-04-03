/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
_hp --;

image_angle += rotSpeed;

if (_hp <= 0)
{
	timeDying = true;
	instance_destroy();
}
else
{
	part_particles_create(global.balaPBoss_sys, x, y, global.balaPBoss , 1)
}

if (global.relativeSpeed > 1.1)
{
	speed = initialSpeed * 1.1;
}
else
{
	//initialSpeed = lerp(initialSpeed ,0, 0.015)
	speed = initialSpeed * global.relativeSpeed
}

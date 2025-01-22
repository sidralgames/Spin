/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
_hp --;

if (_hp <= 0)
{
	instance_destroy();
}
else
{
	part_particles_create(global.balaP_sys, x, y, global.balaP , 2)
}

if global.relativeSpeed> 1.4
{
	speed = initialSpeed * 1.4
}
else
{
	//initialSpeed = lerp(initialSpeed ,0, 0.015)
	speed = initialSpeed * global.relativeSpeed
	
}

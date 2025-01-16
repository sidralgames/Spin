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

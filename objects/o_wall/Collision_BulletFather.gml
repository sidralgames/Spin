/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (other != o_bulletPitch) && (other != o_bulletHPBoss)
{
	instance_destroy(other);
	_hp-=1;
}
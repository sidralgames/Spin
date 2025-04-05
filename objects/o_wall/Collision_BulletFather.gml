/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (other != o_bulletPlayer) && (other != o_enemyMisil)
{
	instance_destroy(other);

	_hp -= 1;
}

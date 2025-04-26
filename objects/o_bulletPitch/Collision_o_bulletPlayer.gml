/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
_hp -=( other.bulletDamage + global.superShot);

if (_hp <= 0)
{
	global.bossBulletsDestroyed += 1;
}

instance_destroy(other)
/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
_hp -= (other.bulletDamage + global.superShot);
if (_hp <= 0)
{
	killedByPlayer = true;
}
instance_destroy(other)
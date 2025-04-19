/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

other._hp = 0;
_hp-=(other.bulletDamage + global.superShot);
if (_hp <= 0)
{
	killedByPlayer = true;
}
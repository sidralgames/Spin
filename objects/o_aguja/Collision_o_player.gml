/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (canBeTouched) && instance_exists(nearBoss)
{
	canBeTouched = false;
	nearBoss.needleAttack = true;
	contCanBeTouched = 80;
}


/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (global.playing)
{
	other._hp -=(bulletDamage + global.superShot);
	instance_destroy();
	other.spinCreateHole = true;
	other.bullethole = point_distance(x,y,other.x, other.y);
	other.angleHole = point_direction(other.x, other.y, x, y);
}
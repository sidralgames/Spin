/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (canBePicked)
{
	instance_destroy();
	with(other)
	{
		_hp +=1;
		instance_create_layer(x, y,"Cable", o_cable)	
	}
}
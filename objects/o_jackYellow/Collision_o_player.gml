/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (canBePicked)
{
	instance_destroy(newCableFake)
	instance_destroy();
	other._hp +=1;
	//global.numberOfCablesPlayer +=1;
	newCable = instance_create_layer(x, y,"Cable", o_cableYellow);	
	
}
// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function PlayerPickUpCable(_cableToCreate)
{
	instance_destroy(newCableFake)
	instance_destroy();
	other._hp +=1;
	//global.numberOfCablesPlayer +=1;
	newCable = instance_create_layer(x, y,"Cable", _cableToCreate);
	global.damageAuxUpgrade = 1;
	global.cablesRecovered +=1;
}

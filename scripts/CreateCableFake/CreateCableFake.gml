// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function CreateCableFake(_color, _jack)
{
	newCableFake = instance_create_layer(x,y,"Cable",o_cableFake);
	newCableFake.cableColor = _color;
	newCableFake.inst = _jack;
}
// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddCableWhite()
{
	ds_map_add(global.cablePlayerList, global.numberOfCablesPlayer,
	{ 
		cable: o_cable,
		position: 3,
	})
	global.numberOfCablesPlayer +=1;
}
// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function DestroyCablesAndJacks()
{
	instance_destroy(o_cable);
	instance_destroy(o_cableRed);
	instance_destroy(o_cableYellow);
	instance_destroy(o_cableFake);
	instance_destroy(o_jackFather);
}
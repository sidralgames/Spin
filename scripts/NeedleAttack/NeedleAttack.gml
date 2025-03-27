// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function NeedleAttack()
{
	if (needleAttack) && instance_exists(o_player)
	{
		for (var i=0; i<12; i++)
		{
			bullet = instance_create_layer(x,y,"Bullets", o_bulletBoss);
			bullet.speed = 2;
			bullet.initialSpeed = 2;
			bullet.direction = (360 / 12) *i;	
		}
		needleAttack = false;
	
	}
}
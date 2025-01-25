// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossNachoStep()
{

	if (contAttack > 0)
	{
		contAttack --;
	}
	if (contAttack <= 0) && (canChangeAttack)
	{
		bulletsCreated = 0;
		contAttack = random_range(100,200);
		
		
		if (_hp < 75)
		{
			attack = choose("BulletTempo","SingleBullet", "DobleBullet", "Pattern1", "Roto");
		}
		else 
		{
			attack = choose("DobleBullet","BulletRound","DobleBullet")
		}
		
		if (attack = "Roto") && (canRoto)
		{
			warning = true;
			rotoSprite = choose(s_rotoBoss1,s_rotoBoss2,s_rotoBoss3);
		}
	}
	
	if (contRotoTime >= 0)
	{
		contRotoTime--;	
		if contRotoTime <= 0
		{
			canRoto = true;
		}
	}
	
	BulletAttack(attack);


	WallAttack(0,2,choose(50,75),35);



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
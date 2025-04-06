// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossChooseAttackBigEye(_hpMin)
{
	//---- CHOOSE ATTACK ---//
	if (_hp < _hpMin)
	{
		precision = 2;
		attack = choose("BulletTempo","BulletSpread", ,"BulletSpread", "MultiBullet", "Pattern1", "Roto");
	}
	else 
	{
		precision = 1.5;
		attack = choose("MultiBullet","BulletSpread", "Pattern1", "Roto")
	}
	
	//---- WARNING ROTO ---//
	if (attack = "Roto") && (canRoto)
	{
		isBreakingVinyl = true;
		warning = true;
		rotoSprite = choose(s_rotoBoss1,s_rotoBoss2,s_rotoBoss3);
	}
	else
	{
		isBreakingVinyl = false;
	}
}
// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossChooseAttackDemon(_hpMin)
{
	//---- CHOOSE ATTACK ---//
	if (_hp < _hpMin)
	{
		attack = choose("BulletTempo","BulletBurst", "DobleBullet", "Pattern1", "Roto");
	}
	else 
	{
		attack = choose("SingleBullet","DobleBullet","BulletBurst", "Pattern1", "Roto")
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
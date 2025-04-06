// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossChooseAttackNacho(_hpMin)
{
	//---- CHOOSE ATTACK ---//
	if (_hp < _hpMin)
	{
		attack = choose("BulletTempo","BulletBurst", "DobleBullet", "Pattern1", "Roto");
	}
	else 
	{
		attack = choose("BulletBurst","SingleBullet", "DobleBullet", "Pattern1");
	}
	
	//---- WARNING ROTO ---//
	if (attack = "Roto") && (canRoto)
	{
		warning = true;
		isBreakingVinyl = true;
		rotoSprite = choose(s_rotoBoss1,s_rotoBoss2,s_rotoBoss3);
	}
	else
	{
		isBreakingVinyl = false;
	}
}
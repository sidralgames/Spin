// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossChooseAttackTribal(_hpMin)
{
	//---- CHOOSE ATTACK ---//
	if (_hp < _hpMin)
	{
		attack = choose("BulletTempo","SingleBullet", "DobleBullet", "Pattern1", "Roto");
	}
	else 
	{
		attack = choose("DobleBullet","BulletBurst","DobleBullet")
	}
	
	//---- WARNING ROTO ---//
	if (attack = "Roto") && (canRoto)
	{
		warning = true;
		rotoSprite = choose(s_rotoBoss1,s_rotoBoss2,s_rotoBoss3);
	}
}
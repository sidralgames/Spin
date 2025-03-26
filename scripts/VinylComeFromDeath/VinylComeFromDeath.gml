// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function VinylComeFromDeath()
{
	if (global.vinylSpin > -0.55)
	{
		if instance_exists(o_boss)
		{
			global.vinylSpin = lerp(global.vinylSpin, o_boss.bossVinylSpin, 0.03)
		}
		else
		{
			global.vinylSpin = lerp(global.vinylSpin, -0.6, 0.03)
		}
	}
	else
	{
		if instance_exists(o_boss) && !instance_exists(o_upgrades)
		{
			global.vinylSpin = o_boss.bossVinylSpin;
		}
		if !instance_exists(o_boss) && instance_exists(o_upgrades)
		{
			global.vinylSpin = global.vinylSpinUpgrades;  //upgradeSpin
		}
		
		checkVinylSpin = true;
	}
}
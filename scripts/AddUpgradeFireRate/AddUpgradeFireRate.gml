// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddUpgradeFireRate()
{
	ds_map_add(global.upgradesList, global.totalNumberOfUpgrades,
	{ 
		alias: "Fire Rate",
		sprite: s_fireRateUpgrade,
		icon: s_iconUpgradeFireRate,
		obj: o_upgradeFireRate,
		canAppear: true,
		choosedThisTime: false,
		unique: false,
		timesInitial: 3,
		times: 3,
		achievementPicked: false
	})

	global.totalNumberOfUpgrades +=1;
}

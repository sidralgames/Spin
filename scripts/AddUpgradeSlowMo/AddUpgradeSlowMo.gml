// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddUpgradeSlowMo()
{
	ds_map_add(global.upgradesList, global.totalNumberOfUpgrades,
	{ 
		alias: "SlowMo",
		sprite: s_upgradeSlowMo,
		icon: s_iconUpgradeSlowMo,
		obj: o_upgradeSlowMotion,
		canAppear: true,
		choosedThisTime: false,
		unique: true,
		timesInitial: -1,
		times: -1,
		achievementPicked: false
	})

	global.totalNumberOfUpgrades +=1;
}

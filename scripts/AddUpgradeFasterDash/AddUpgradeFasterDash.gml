// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddUpgradeFasterDash()
{
	ds_map_add(global.upgradesList, global.totalNumberOfUpgrades,
	{ 
		alias: "Faster Dash",
		sprite: s_upgradeFasterDash,
		icon: s_iconUpgradeFasterDash,
		obj: o_upgradeFasterDash,
		canAppear: true,
		choosedThisTime: false,
		unique: true,
		timesInitial: -1,
		times: -1,
		achievementPicked: false
	})

	global.totalNumberOfUpgrades +=1;
}

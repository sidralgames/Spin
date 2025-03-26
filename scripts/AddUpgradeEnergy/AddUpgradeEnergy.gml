// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddUpgradeEnergy()
{
	ds_map_add(global.upgradesList, global.totalNumberOfUpgrades,
	{ 
		alias: "Energy",
		sprite: s_upgradeEnergy,
		icon: s_iconUpgradeEnergy,
		obj: o_upgradeEnergy,
		canAppear: true,
		choosedThisTime: false,
		unique: false,
		timesInitial: -1,
		times: -1
	})

	global.totalNumberOfUpgrades +=1;
}

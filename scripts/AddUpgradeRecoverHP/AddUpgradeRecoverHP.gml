// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddUpgradeRecoverLives()
{
	ds_map_add(global.upgradesList, global.totalNumberOfUpgrades,
	{ 
		alias: "RecoverLives",
		sprite: s_iconUpgradeRecoverHP,
		icon: s_iconUpgradeRecoverHP,
		obj: o_upgradeRecoverLives,
		canAppear: true,
		choosedThisTime: false,
		unique: false,
		timesInitial: 4,
		times: 4
	})

	global.totalNumberOfUpgrades +=1;
}


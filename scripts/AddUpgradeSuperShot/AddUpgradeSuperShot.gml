// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddUpgradeSuperShot()
{
	ds_map_add(global.upgradesList, global.totalNumberOfUpgrades,
	{ 
		alias: "SuperShot",
		sprite: s_upgradeSuperShot,
		icon: s_iconUpgradeSuperShot,
		obj: o_upgradeSuperShot,
		canAppear: true,
		choosedThisTime: false,
		unique: false,
		timesInitial: 2,
		times: 2
	})

	global.totalNumberOfUpgrades +=1;
}


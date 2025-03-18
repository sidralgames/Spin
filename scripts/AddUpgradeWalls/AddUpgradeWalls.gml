// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddUpgradeWalls()
{
	ds_map_add(global.upgradesList, global.totalNumberOfUpgrades,
	{ 
		alias: "WeakerWalls",
		sprite: s_wallNachoUpgrade,
		obj: o_upgradeWalls,
		canAppear: true,
		choosedThisTime: false,
		unique: false,
		timesInitial: 3,
		times: 3
	})

	global.totalNumberOfUpgrades +=1;
}

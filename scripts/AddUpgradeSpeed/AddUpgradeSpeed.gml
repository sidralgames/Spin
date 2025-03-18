// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddUpgradeSpeed()
{
	ds_map_add(global.upgradesList, global.totalNumberOfUpgrades,
	{ 
		alias: "Speed Up",
		sprite: s_upgradeEnergy,
		obj: o_upgradeSpeed,
		canAppear: true,
		choosedThisTime: false,
		unique: false,
		timesInitial: 3,
		times: 3
	})

	global.totalNumberOfUpgrades +=1;
}

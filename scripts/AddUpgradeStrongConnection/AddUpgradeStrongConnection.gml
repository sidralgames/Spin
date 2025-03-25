// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddUpgradeStrongConnection()
{
	ds_map_add(global.upgradesList, global.totalNumberOfUpgrades,
	{ 
		alias: "StrongConnection",
		sprite: s_upgradeStrongConnection,
		obj: o_upgradeStrongConnection,
		canAppear: true,
		choosedThisTime: false,
		unique: true,
		timesInitial: -1,
		times: -1
	})

	global.totalNumberOfUpgrades +=1;
}
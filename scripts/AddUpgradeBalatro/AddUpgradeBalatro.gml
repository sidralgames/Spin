// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddUpgradeBalatro()
{
	ds_map_add(global.upgradesList, global.totalNumberOfUpgrades,
	{ 
		alias: "Jack Jocker",
		sprite: s_upgradeBalatro,
		icon: s_iconUpgradeBalatro,
		obj: o_upgradeBalatro,
		canAppear: true,
		choosedThisTime: false,
		unique: true,
		timesInitial: -1,
		times: -1
	})

	global.totalNumberOfUpgrades +=1;
}

// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddUpgradeHalo()
{
	ds_map_add(global.upgradesList, global.totalNumberOfUpgrades,
	{ 
		alias: "Halo",
		sprite: s_halo,
		obj: o_upgradeHalo,
		icon: s_iconUpgradeHalo,
		canAppear: true,
		choosedThisTime: false,
		unique: true,
		timesInitial: -1,
		times: -1
	})

	global.totalNumberOfUpgrades +=1;
}

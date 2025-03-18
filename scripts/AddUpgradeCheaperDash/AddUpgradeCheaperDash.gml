// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddUpgradeCheaperDash()
{
	ds_map_add(global.upgradesList, global.totalNumberOfUpgrades,
	{ 
		alias: "Cheaper Dash",
		sprite: s_upgradeEnergy,
		obj: o_upgradeCheaperDash,
		canAppear: true,
		choosedThisTime: false,
		unique: false,
		timesInitial: 2,
		times: 2
	})

	global.totalNumberOfUpgrades +=1;
}

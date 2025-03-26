// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddUpgradeFasterCharge()
{
	ds_map_add(global.upgradesList, global.totalNumberOfUpgrades,
	{ 
		alias: "Faster Charge",
		sprite: s_upgradeFasterCharge,
		icon: s_iconUpgradeFasterCharge,
		obj: o_upgradeFasterCharge,
		canAppear: true,
		choosedThisTime: false,
		unique: false,
		timesInitial: 2,
		times: 2
	})

	global.totalNumberOfUpgrades +=1;
}

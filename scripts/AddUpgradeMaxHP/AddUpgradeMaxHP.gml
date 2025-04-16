// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddUpgradeMaxHP()
{
	ds_map_add(global.upgradesList, global.totalNumberOfUpgrades,
	{ 
		alias: "+1 MaxHP",
		sprite: s_upgradeHP,
		icon: s_iconUpgradeMaxHp,
		obj: o_upgradeHP,
		canAppear: true,
		choosedThisTime: false,
		unique: false,
		timesInitial: 2,
		times: 2,
		achievementPicked: false
	})

	global.totalNumberOfUpgrades +=1;
}


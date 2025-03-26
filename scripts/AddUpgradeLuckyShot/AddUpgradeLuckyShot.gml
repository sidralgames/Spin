// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddUpgradeLuckyShot()
{
	ds_map_add(global.upgradesList, global.totalNumberOfUpgrades,
	{ 
		alias: "Lucky Shot",
		sprite: s_lucky,
		icon: s_iconUpggradeLuckyShot,
		obj: o_upgradeLuckyShot,
		canAppear: true,
		choosedThisTime: false,
		unique: true,
		timesInitial: -1,
		times: -1
	})

	global.totalNumberOfUpgrades +=1;
}
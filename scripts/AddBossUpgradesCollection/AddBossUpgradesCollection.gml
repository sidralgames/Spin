// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBossUpgradesCollection()
{
ds_map_add(global.collectionList, global.totalNumberOfVinyls,
	{ 
		alias: "Upgrades",
		keyKilledBy :"killedByUpgrades",
		sprite: s_galletaUpgrades,
		spriteVinyl: s_discoVinilo,
		vinylAlpha : 0.95,
		vinylColor : c_white,
		number: 2,
		defeatedInRun: 0,
		unlocked: global.bossUpgradesCollection
	})

	global.totalNumberOfVinyls +=1;
}
// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBossUpgradesCollection()
{
	ds_map_add(global.collectionList, global.totalNumberOfVinyls,
	{ 
		alias: "Upgrades",
		song: snd_upgrade,
		offsetSong: 0,
		keyKilledBy :"killedByUpgrades",
		sprite: s_galletaUpgrades,
		spriteVinyl: s_discoVinilo,
		hpMax: 100,
		vinylAlpha : 0.95,
		vinylColor : c_white,
		number: 6,
		defeatedInRun: 0,
		collection: global.bossUpgradesCollection
	})

	global.totalNumberOfVinyls +=1;
}
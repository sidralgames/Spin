// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBossMixtapeCollection()
{
	ds_map_add(global.collectionList, global.totalNumberOfVinyls,
	{ 
		alias: "Mixtape",
		keyKilledBy :"killedByMixtape",
		sprite: s_bossMixtape,
		spriteVinyl: s_discoVinilo,
		vinylAlpha : 0.9,
		vinylColor : global.lightPink,
		number: 5,
		defeatedInRun: 0,
		unlocked: global.bossMixtapeCollection
	})

	global.totalNumberOfVinyls +=1;
}

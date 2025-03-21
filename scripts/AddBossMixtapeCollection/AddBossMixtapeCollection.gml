// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBossMixtapeCollection()
{
	ds_map_add(global.collectionList, global.totalNumberOfVinyls,
	{ 
		alias: "Mixtape",
		song: snd_mixtape,
		offsetSong: 0,
		keyKilledBy :"killedByMixtape",
		sprite: s_bossMixtape,
		spriteVinyl: s_discoVinilo,
		hpMax: 200,
		vinylAlpha : 0.9,
		vinylColor : global.lightPink,
		number: 5,
		defeatedInRun: 0,
		collection: global.bossMixtapeCollection
	})

	global.totalNumberOfVinyls +=1;
}

// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBossNachoCollection()
{
	ds_map_add(global.collectionList, global.totalNumberOfVinyls,
	{ 
		alias: "Nacho",
		song: snd_song1,
		offsetSong: 65,
		keyKilledBy :"killedByNacho",
		sprite: s_bossNacho,
		spriteVinyl: s_discoVinilo,
		hpMax: 85,
		vinylAlpha : 1,
		vinylColor : global.pink,
		number: 0,
		defeatedInRun: 0,
		collection: global.bossNachoCollection
	})

	global.totalNumberOfVinyls +=1;
}

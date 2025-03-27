// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBossTribalCollection()
{
	ds_map_add(global.collectionList, global.totalNumberOfVinyls,
	{ 
		alias: "Tribal",
		song: snd_tribal,
		offsetSong: 135,
		keyKilledBy :"killedByTribal",
		sprite: s_bossTribal,
		spriteVinyl: s_discoVinilo,
		hpMax: 170,
		vinylAlpha : 0.95,
		vinylColor : global.yellow,
		number: 2,
		defeatedInRun: 0,
		collection: global.bossTribalCollection,
		unlocked: 0
	})

	global.totalNumberOfVinyls +=1;
}

// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBossMixtapeCollection()
{
	ds_map_add(global.collectionList, global.totalNumberOfVinyls,
	{ 
		alias: "bossMixtape",
		song: snd_mixtape,
		offsetSong: 80,
		keyKilledBy :"killedByMixtape",
		sprite: s_bossMixtape,
		bside: s_bossNacho_B,
		spriteVinyl: s_discoVinilo,
		hpMax: 350,
		vinylAlpha : 0.9,
		vinylColor : global.lightPink,
		number: 5,
		defeatedInRun: 0,
		collection: global.bossMixtapeCollection,
		unlocked: 0,
		step: BossDefaultStep,
		tintCol: global.yellowGirlArray,
		noiseTintCol: global.lightPinkArray,
		wallSprite: s_wallMixtape
	})

	global.totalNumberOfVinyls +=1;
}

// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBossGirlCollection()
{
	ds_map_add(global.collectionList, global.totalNumberOfVinyls,
	{ 
		alias: "bossGirl",
		song: snd_e4u,
		offsetSong: 40,
		keyKilledBy :"killedByGirl",
		sprite: s_bossGirl,
		bside: s_bossNacho_B,
		spriteVinyl: s_discoVinilo,
		hpMax: 210,
		vinylAlpha : 0.95,
		vinylColor : global.pink,
		number: 3,
		defeatedInRun: 0,
		collection: global.bossGirlCollection,
		unlocked: 0,
		step: BossGirlStep
	})

	global.totalNumberOfVinyls +=1;
}

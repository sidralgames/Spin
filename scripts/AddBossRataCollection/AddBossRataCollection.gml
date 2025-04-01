// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBossRataCollection()
{
	ds_map_add(global.collectionList, global.totalNumberOfVinyls,
	{ 
		alias: "bossRata",
		song: snd_chino,
		offsetSong: 5,
		keyKilledBy :"killedByRata",
		sprite: s_bossRata,
		bside: s_bossNacho_B,
		spriteVinyl: s_discoVinilo,
		hpMax: 290,
		vinylAlpha : 0.85,
		vinylColor : global.greenRat,
		number: 4,
		defeatedInRun: 0,
		collection: global.bossRataCollection,
		unlocked: 0,
		step: BossRataStep,
		tintCol: global.greenOscRatArray,
		noiseTintCol: global.greenRatArray
	})

	global.totalNumberOfVinyls +=1;
}

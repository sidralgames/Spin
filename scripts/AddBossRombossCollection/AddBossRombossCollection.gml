// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBossRombossCollection()
{
	ds_map_add(global.collectionList, global.totalNumberOfVinyls,
	{ 
		alias: "bossRomboss",
		song: snd_Romboss,
		offsetSong: 36,
		keyKilledBy :"killedByRomboss",
		sprite: s_bossRomboss,
		bside: s_bossNacho_B,
		spriteVinyl: s_discoVinilo,
		hpMax: 400,
		vinylAlpha : 0.85,
		vinylColor : global.blue,
		number: 8,
		defeatedInRun: 0,
		collection: global.bossRombossCollection,
		unlocked: 0,
		step: BossRombossStep,
		tintCol: global.BlueArray,
		noiseTintCol: global.lightBlueArray,
		wallSprite: s_wallDemon
	})

	global.totalNumberOfVinyls +=1;
}

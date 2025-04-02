// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBossDemonCollection()
{
	ds_map_add(global.collectionList, global.totalNumberOfVinyls,
	{ 
		alias: "bossDemon",
		song: snd_songDemon,
		offsetSong: 0,
		keyKilledBy :"killedByDemon",
		sprite: s_bossDemon,
		bside: s_bossNacho_B,
		spriteVinyl: s_discoVinilo,
		hpMax: 130,
		vinylAlpha : 0.85,
		vinylColor : global.lightBlue,
		number: 1,
		defeatedInRun: 0,
		collection: global.bossDemonCollection,
		unlocked: 0,
		step:  BossDemonStep,
		tintCol: global.yellowArray,
		noiseTintCol: global.BlueArray,
		wallSprite: s_wallDemon
	})

	global.totalNumberOfVinyls +=1;
}

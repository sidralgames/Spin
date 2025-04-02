// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBossBigEyeCollection()
{
	ds_map_add(global.collectionList, global.totalNumberOfVinyls,
	{ 
		alias: "bossBigEye",
		song: snd_satansVomit,
		offsetSong: 0,
		keyKilledBy :"killedByBigEye",
		sprite: s_bossBigEye,
		bside: s_bossNacho_B,
		spriteVinyl: s_discoVinilo,
		hpMax: 400,
		vinylAlpha : 0.85,
		vinylColor : global.purple,
		number: 6,
		defeatedInRun: 0,
		collection: global.bossPentagovonCollection,
		unlocked: 0,
		step: BossBigEyeStep,
		tintCol: global.brightArray,
		noiseTintCol: global.purpleArray,
		wallSprite: s_wallGirl
	})

	global.totalNumberOfVinyls +=1;
}

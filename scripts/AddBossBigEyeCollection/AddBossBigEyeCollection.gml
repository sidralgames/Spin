// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBossBigEyeCollection()
{
	ds_map_add(global.collectionList, global.totalNumberOfVinyls,
	{ 
		alias: "bossBigEye",
		song: snd_EyeSeeU,
		offsetSong: 14,
		keyKilledBy :"killedByBigEye",
		sprite: s_bossBigEye,
		bside: s_bossNacho_B,
		spriteVinyl: s_discoVinilo,
		hpMax: 400,
		vinylAlpha : 0.95,
		vinylColor : global.lightPink,
		number: 7,
		defeatedInRun: 0,
		collection: global.bossBigEyeCollection,
		unlocked: 0,
		step: BossBigEyeStep,
		tintCol: global.purpleArray3,
		noiseTintCol: global.salmonArray,
		wallSprite: s_wallBigEye
	})

	global.totalNumberOfVinyls +=1;
}

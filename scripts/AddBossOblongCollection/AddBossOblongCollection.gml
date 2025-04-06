// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBossOblongCollection()
{
	ds_map_add(global.collectionList, global.totalNumberOfVinyls,
	{ 
		alias: "bossOblong",
		song: snd_EyeSeeU,
		offsetSong: 14,
		keyKilledBy :"killedByOblong",
		sprite: s_bossOblong,
		bside: s_bossNacho_B,
		spriteVinyl: s_discoVinilo,
		hpMax: 400,
		vinylAlpha : 0.95,
		vinylColor : global.orange,
		number: 9,
		defeatedInRun: 0,
		collection: global.bossBigEyeCollection,
		unlocked: 0,
		step: BossOblongStep,
		tintCol: global.yellowArray2,
		noiseTintCol: global.orangeArray,
		wallSprite: s_wallOblong,
		isDLC: true,
		spriteDLCTitle: s_elGancho_title
	})

	global.totalNumberOfVinyls +=1;
}

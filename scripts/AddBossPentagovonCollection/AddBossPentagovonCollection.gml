// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBossPentagovonCollection()
{
	ds_map_add(global.collectionList, global.totalNumberOfVinyls,
	{ 
		alias: "bossPentagovon",
		song: snd_satansVomit,
		offsetSong: 0,
		keyKilledBy :"killedByPentagovon",
		sprite: s_bossPentagovon,
		bside: s_bossNacho_B,
		spriteVinyl: s_discoVinilo,
		hpMax: 400,
		vinylAlpha : 0.85,
		vinylColor : global.brightRed,
		number: 8,
		defeatedInRun: 0,
		collection: global.bossPentagovonCollection,
		unlocked: 0,
		step: BossDefaultStep,
		tintCol: global.redArray,
		noiseTintCol: global.yellowArray2,
		wallSprite: s_wallPentagovon
	})

	global.totalNumberOfVinyls +=1;
}

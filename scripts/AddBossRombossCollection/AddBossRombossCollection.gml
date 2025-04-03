// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBossRombossCollection()
{
	ds_map_add(global.collectionList, global.totalNumberOfVinyls,
	{ 
		alias: "bossRomboss",
		song: snd_satansVomit,
		offsetSong: 0,
		keyKilledBy :"killedByPentagovon",
		sprite: s_bossRomboss,
		bside: s_bossNacho_B,
		spriteVinyl: s_vinylEP,
		hpMax: 400,
		vinylAlpha : 0.85,
		vinylColor : global.blue,
		number: 9,
		defeatedInRun: 0,
		collection: global.bossRombossCollection,
		unlocked: 0,
		step: BossDefaultStep,
		tintCol: global.darkBlueArray,
		noiseTintCol: global.lightBlue,
		wallSprite: s_wallDemon
	})

	global.totalNumberOfVinyls +=1;
}
